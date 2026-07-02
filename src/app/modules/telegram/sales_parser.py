import json
from typing import Any

import httpx

from app.core.config import Settings, get_settings
from app.modules.telegram.media import extract_message_text

SALE_PARSER_SCHEMA = {
    "name": "sale_payload",
    "strict": True,
    "schema": {
        "type": "object",
        "additionalProperties": False,
        "properties": {
            "client_name": {"type": ["string", "null"]},
            "items": {
                "type": "array",
                "items": {
                    "type": "object",
                    "additionalProperties": False,
                    "properties": {
                        "product_name": {"type": "string"},
                        "quantity": {"type": "integer"},
                        "unit_price": {"type": ["string", "null"]},
                    },
                    "required": ["product_name", "quantity", "unit_price"],
                },
            },
        },
        "required": ["client_name", "items"],
    },
}

SALE_PARSER_SYSTEM_PROMPT = """
Eres el extractor de ventas de Qypu para Telegram.
Tu trabajo es convertir un mensaje natural en una venta estructurada.

Reglas:
- Extrae TODOS los productos vendidos. No omitas items unidos con "y", comas o frases naturales.
- Convierte cantidades en palabras a numeros: una/un/uno=1, dos=2, tres=3, etc.
- product_name debe conservar el nombre natural del producto sin la cantidad.
- Si recibes un catalogo disponible y hay coincidencia razonable, product_name debe ser
  EXACTAMENTE el nombre del producto en el catalogo.
- Si el usuario dice "coca y dos galletas casino", son dos items:
  1 coca y 2 galletas casino.
- Si falta una cantidad pero claramente es un producto vendido, usa quantity=1.
- unit_price debe ser string decimal con punto solo si el usuario indico precio o monto unitario.
- Si no hay precio, unit_price debe ser null; el sistema usara el precio del catalogo.
- client_name debe ser null si no se menciona cliente.
- No inventes productos, precios ni clientes.
""".strip()


class TelegramSaleParserError(Exception):
    pass


class TelegramSaleParser:
    def __init__(self, settings: Settings | None = None) -> None:
        self._settings = settings or get_settings()

    async def parse(
        self,
        text: str,
        product_names: list[str] | None = None,
    ) -> dict[str, Any] | None:
        api_key = self._require_api_key()
        payload = {
            "model": self._settings.groq_text_model,
            "messages": [
                {"role": "system", "content": SALE_PARSER_SYSTEM_PROMPT},
                {"role": "user", "content": self._user_message(text, product_names)},
            ],
            "response_format": {
                "type": "json_schema",
                "json_schema": SALE_PARSER_SCHEMA,
            },
        }

        async with httpx.AsyncClient(timeout=60.0) as client:
            response = await client.post(
                f"{self._settings.groq_api_base_url}/chat/completions",
                headers={"Authorization": f"Bearer {api_key}"},
                json=payload,
            )

        self._raise_for_status(response)
        content = extract_message_text(response.json())
        if not content:
            raise TelegramSaleParserError("El extractor de ventas no devolvio una respuesta.")

        try:
            raw_payload = json.loads(content)
        except json.JSONDecodeError as exc:
            raise TelegramSaleParserError("El extractor de ventas devolvio JSON invalido.") from exc

        return self._clean_payload(raw_payload)

    def _user_message(self, text: str, product_names: list[str] | None) -> str:
        if not product_names:
            return text

        catalog_lines = "\n".join(f"- {product_name}" for product_name in product_names)
        return (
            "Catalogo disponible:\n"
            f"{catalog_lines}\n\n"
            "Mensaje del comerciante:\n"
            f"{text}\n\n"
            "Cuando un producto mencionado coincida razonablemente con el catalogo, "
            "devuelve product_name exactamente como aparece en el catalogo. "
            "Ejemplos: 'coca' puede ser 'Coca cola medio litro'; "
            "'galletas casino' puede ser 'Casino'."
        )

    def _clean_payload(self, raw_payload: dict[str, Any]) -> dict[str, Any] | None:
        raw_items = raw_payload.get("items")
        if not isinstance(raw_items, list):
            raise TelegramSaleParserError("El extractor de ventas devolvio items invalidos.")

        items: list[dict[str, Any]] = []
        for raw_item in raw_items:
            if not isinstance(raw_item, dict):
                continue
            product_name = raw_item.get("product_name")
            quantity = raw_item.get("quantity")
            unit_price = raw_item.get("unit_price")
            if not isinstance(product_name, str) or not product_name.strip():
                continue
            if not isinstance(quantity, int) or quantity <= 0:
                continue

            item = {
                "product_name": product_name.strip(),
                "quantity": quantity,
            }
            if isinstance(unit_price, str) and unit_price.strip():
                item["unit_price"] = unit_price.strip()
            items.append(item)

        if not items:
            return None

        payload: dict[str, Any] = {"items": items}
        client_name = raw_payload.get("client_name")
        if isinstance(client_name, str) and client_name.strip():
            payload["client_name"] = client_name.strip()
        return payload

    def _require_api_key(self) -> str:
        if not self._settings.groq_api_key:
            raise TelegramSaleParserError("GROQ_API_KEY no esta configurada.")
        return self._settings.groq_api_key

    def _raise_for_status(self, response: httpx.Response) -> None:
        try:
            response.raise_for_status()
        except httpx.HTTPStatusError as exc:
            detail = exc.response.text.strip()
            raise TelegramSaleParserError(
                f"No pude ejecutar el extractor de ventas. "
                f"{detail or 'Respuesta invalida del proveedor.'}"
            ) from exc
