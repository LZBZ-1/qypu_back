import json
from typing import Any

import httpx

from app.core.config import Settings, get_settings
from app.modules.telegram.media import extract_message_text
from app.modules.telegram.models import SellerIntent, TelegramRoute, WarehouseIntent

ORCHESTRATOR_SCHEMA = {
    "name": "telegram_route",
    "strict": True,
    "schema": {
        "type": "object",
        "additionalProperties": False,
        "properties": {
            "agent_type": {
                "type": "string",
                "enum": ["warehouse", "seller", "none"],
            },
            "action_type": {
                "type": "string",
                "enum": [
                    "help",
                    "list_products",
                    "list_products_by_category",
                    "list_categories",
                    "get_stock",
                    "create_product",
                    "create_category",
                    "set_stock",
                    "increment_stock",
                    "rename_product",
                    "rename_category",
                    "create_sale",
                    "list_sales",
                    "none",
                ],
            },
            "requires_confirmation": {"type": "boolean"},
            "payload": {
                "type": "object",
                "additionalProperties": False,
                "properties": {
                    "product_name": {"type": ["string", "null"]},
                    "category_name": {"type": ["string", "null"]},
                    "unit_price": {"type": ["string", "null"]},
                    "initial_stock": {"type": ["integer", "null"]},
                    "quantity": {"type": ["integer", "null"]},
                    "delta": {"type": ["integer", "null"]},
                    "new_name": {"type": ["string", "null"]},
                    "text": {"type": ["string", "null"]},
                },
                "required": [
                    "product_name",
                    "category_name",
                    "unit_price",
                    "initial_stock",
                    "quantity",
                    "delta",
                    "new_name",
                    "text",
                ],
            },
        },
        "required": [
            "agent_type",
            "action_type",
            "requires_confirmation",
            "payload",
        ],
    },
}

ORCHESTRATOR_SYSTEM_PROMPT = """
Eres la IA orquestadora de Qypu para Telegram.
Tu trabajo es delegar solicitudes al agente correcto:
- warehouse: productos, categorias, stock, inventario, catalogo, almacen
- seller: ventas, pedidos, clientes, comprobantes, boletas, facturas, cotizaciones

Responde solo con JSON valido segun el schema entregado.

Reglas:
- Si el mensaje es ambiguo o no corresponde al dominio, usa agent_type="none" y action_type="none".
- Si el usuario pide ayuda general de almacen, usa agent_type="warehouse" y action_type="help".
- Si el usuario pide ayuda general de ventas, usa agent_type="seller" y action_type="help".
- Para warehouse usa solo estas acciones:
  help, list_products, list_products_by_category, list_categories, get_stock,
  create_product, create_category, set_stock, increment_stock, rename_product,
  rename_category.
- Para seller usa solo estas acciones: help, create_sale, list_sales.
- create_sale identifica que la solicitud pertenece al vendedor y conserva el mensaje
  original en text. No inventes datos.
- list_sales se usa para consultar historial de ventas por fecha o producto. Conserva
  el mensaje original en text y extrae product_name si el usuario filtra por producto.
- requires_confirmation debe ser true en create_sale y en acciones de escritura de warehouse:
  create_product, create_category, set_stock, increment_stock, rename_product, rename_category.
- requires_confirmation debe ser false en help, list_products, list_products_by_category,
  list_categories, get_stock y list_sales.
- Extrae product_name, category_name, new_name y text en espanol natural.
- Para create_category, conserva en text el mensaje original completo. Si el usuario
  menciona varias categorias separadas por comas, deja category_name con el texto de
  categorias completo, sin juntar ni descartar elementos. Si usa comillas, respeta el
  contenido entre comillas.
- No decidas si "Alimentos y Bebidas" es una o dos categorias cuando no hay comas;
  devuelve create_category con ese texto y el flujo conversacional pedira confirmacion.
- Si el usuario pide registrar una categoria y crear un producto en la misma solicitud,
  usa action_type="create_product" con category_name. No uses create_category en ese caso.
- Usa list_products_by_category cuando el usuario pide productos de una categoria,
  por ejemplo "que tengo en limpieza", "productos de abarrotes" o "catalogo de categoria bebidas".
- unit_price debe ser string decimal con punto si existe, por ejemplo "12.50".
- initial_stock, quantity y delta deben ser enteros si existen.
- Si falta un dato clave para una accion, mantén la mejor accion posible y deja ese campo en null.
""".strip()


class TelegramOrchestratorError(Exception):
    pass


class TelegramOrchestrator:
    def __init__(self, settings: Settings | None = None) -> None:
        self._settings = settings or get_settings()

    async def route(self, text: str) -> TelegramRoute | None:
        api_key = self._require_api_key()
        payload = {
            "model": self._settings.groq_text_model,
            "messages": [
                {"role": "system", "content": ORCHESTRATOR_SYSTEM_PROMPT},
                {"role": "user", "content": text},
            ],
            "response_format": {
                "type": "json_schema",
                "json_schema": ORCHESTRATOR_SCHEMA,
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
            raise TelegramOrchestratorError("El orquestador no devolvio una respuesta valida.")

        try:
            raw_route = json.loads(content)
        except json.JSONDecodeError as exc:
            raise TelegramOrchestratorError("El orquestador devolvio JSON invalido.") from exc

        return self._build_route(raw_route, original_text=text)

    def _build_route(self, raw_route: dict[str, Any], original_text: str) -> TelegramRoute | None:
        agent_type = raw_route.get("agent_type")
        action_type = raw_route.get("action_type")
        requires_confirmation = raw_route.get("requires_confirmation")
        payload = raw_route.get("payload")

        if agent_type == "none" or action_type == "none":
            return None
        if not isinstance(payload, dict):
            raise TelegramOrchestratorError("El orquestador devolvio un payload invalido.")
        if not isinstance(requires_confirmation, bool):
            raise TelegramOrchestratorError(
                "El orquestador devolvio requires_confirmation invalido."
            )

        cleaned_payload = self._clean_payload(payload, original_text)

        if agent_type == "seller" and action_type in {"help", "create_sale", "list_sales"}:
            return TelegramRoute(
                agent_type="seller",
                intent=SellerIntent(
                    action_type=action_type,
                    payload=cleaned_payload,
                    requires_confirmation=requires_confirmation,
                ),
            )

        if agent_type == "warehouse" and action_type in {
            "help",
            "list_products",
            "list_products_by_category",
            "list_categories",
            "get_stock",
            "create_product",
            "create_category",
            "set_stock",
            "increment_stock",
            "rename_product",
            "rename_category",
        }:
            return TelegramRoute(
                agent_type="warehouse",
                intent=WarehouseIntent(
                    action_type=action_type,
                    payload=cleaned_payload,
                    requires_confirmation=requires_confirmation,
                ),
            )

        raise TelegramOrchestratorError("El orquestador devolvio una combinacion invalida.")

    def _clean_payload(self, payload: dict[str, Any], original_text: str) -> dict[str, Any]:
        cleaned: dict[str, Any] = {}
        for key in (
            "product_name",
            "category_name",
            "unit_price",
            "initial_stock",
            "quantity",
            "delta",
            "new_name",
            "text",
        ):
            value = payload.get(key)
            if value is None:
                continue

            if key in {"product_name", "category_name", "unit_price", "new_name", "text"}:
                if isinstance(value, str) and value.strip():
                    cleaned[key] = value.strip()
                continue

            if isinstance(value, int):
                cleaned[key] = value

        if "text" not in cleaned:
            cleaned["text"] = original_text
        return cleaned

    def _require_api_key(self) -> str:
        if not self._settings.groq_api_key:
            raise TelegramOrchestratorError("GROQ_API_KEY no esta configurada.")
        return self._settings.groq_api_key

    def _raise_for_status(self, response: httpx.Response) -> None:
        try:
            response.raise_for_status()
        except httpx.HTTPStatusError as exc:
            detail = exc.response.text.strip()
            raise TelegramOrchestratorError(
                f"No pude ejecutar el orquestador LLM. "
                f"{detail or 'Respuesta invalida del proveedor.'}"
            ) from exc
