import re
import unicodedata
from decimal import Decimal, InvalidOperation

from app.modules.telegram.models import WarehouseIntent

CONFIRM_WORDS = {"si", "sí", "confirmo", "guardar", "ok", "dale"}
CANCEL_WORDS = {"no", "cancelar", "cancela"}


class WarehouseAgent:
    def parse(self, text: str) -> WarehouseIntent | None:
        normalized = normalize_text(text)
        if normalized in {
            "almacenero",
            "almacen",
            "inventario",
            "ayuda",
            "help",
            "productos",
            "categorias",
        }:
            return WarehouseIntent("help", {}, requires_confirmation=False)

        if normalized in {"listar productos", "lista productos", "ver productos"}:
            return WarehouseIntent("list_products", {}, requires_confirmation=False)

        if normalized in {"listar categorias", "lista categorias", "ver categorias"}:
            return WarehouseIntent("list_categories", {}, requires_confirmation=False)

        category_products = extract_category_name_for_product_list(normalized)
        if category_products:
            return WarehouseIntent(
                "list_products_by_category",
                {"category_name": category_products},
                requires_confirmation=False,
            )

        if normalized.startswith(("registrar categoria ", "crear categoria ")):
            match = re.match(r"^(?:registrar|crear)\s+categoria\s+(.+)$", normalized)
            if match:
                return WarehouseIntent(
                    "create_category",
                    {"category_name": match.group(1).strip()},
                    requires_confirmation=True,
                )

        stock_query = re.search(
            r"(?:cuanto|cuanta|ver|consultar).*(?:stock|inventario)",
            normalized,
        )
        if stock_query:
            product_name = extract_after_any(normalized, ["tiene", "de", "del", "producto"])
            if product_name:
                return WarehouseIntent(
                    "get_stock",
                    {"product_name": product_name},
                    requires_confirmation=False,
                )

        if normalized.startswith(("registrar producto ", "crear producto ")):
            return self._parse_create(normalized)

        if normalized.startswith("stock "):
            return self._parse_stock_change(normalized)

        if normalized.startswith("editar producto "):
            return self._parse_rename(normalized)

        if normalized.startswith("editar categoria "):
            return self._parse_category_rename(normalized)

        return None

    def _parse_create(self, normalized: str) -> WarehouseIntent | None:
        product_name = extract_product_name_for_create(normalized)
        category_name = extract_category_name_for_create(normalized)
        stock_value = extract_stock_value(normalized)
        price_value = extract_price_value(normalized)

        if not product_name or not category_name:
            return None

        payload: dict[str, str | int] = {
            "product_name": product_name,
            "category_name": category_name,
        }
        if stock_value is not None:
            payload["initial_stock"] = stock_value
        if price_value is not None:
            payload["unit_price"] = str(price_value)

        return WarehouseIntent("create_product", payload, requires_confirmation=True)

    def _parse_stock_change(self, normalized: str) -> WarehouseIntent | None:
        match = re.match(r"stock\s+(.+?)\s+([+-]?\d+)\s*$", normalized)
        if not match:
            return None

        product_name = match.group(1).strip()
        quantity_text = match.group(2)
        quantity = int(quantity_text)
        if quantity_text.startswith(("+", "-")):
            return WarehouseIntent(
                "increment_stock",
                {"product_name": product_name, "delta": quantity},
                requires_confirmation=True,
            )

        return WarehouseIntent(
            "set_stock",
            {"product_name": product_name, "quantity": quantity},
            requires_confirmation=True,
        )

    def _parse_rename(self, normalized: str) -> WarehouseIntent | None:
        match = re.match(r"editar producto\s+(.+?)\s+nombre\s+(.+)$", normalized)
        if not match:
            return None

        return WarehouseIntent(
            "rename_product",
            {
                "product_name": match.group(1).strip(),
                "new_name": match.group(2).strip(),
            },
            requires_confirmation=True,
        )

    def _parse_category_rename(self, normalized: str) -> WarehouseIntent | None:
        match = re.match(r"editar categoria\s+(.+?)\s+nombre\s+(.+)$", normalized)
        if not match:
            return None

        return WarehouseIntent(
            "rename_category",
            {
                "category_name": match.group(1).strip(),
                "new_name": match.group(2).strip(),
            },
            requires_confirmation=True,
        )


def normalize_text(text: str) -> str:
    without_accents = "".join(
        char
        for char in unicodedata.normalize("NFD", text.strip().lower())
        if unicodedata.category(char) != "Mn"
    )
    without_punctuation = re.sub(r"[,;:]", " ", without_accents)
    without_punctuation = re.sub(r"(?<!\d)\.(?!\d)", " ", without_punctuation)
    return re.sub(r"\s+", " ", without_punctuation).strip()


def extract_product_name_for_create(text: str) -> str | None:
    match = re.match(
        r"^(?:registrar|crear)\s+producto\s+(.+?)\s+"
        r"(?:de\s+la\s+|de\s+el\s+|del\s+|en\s+la\s+)?categoria\s+",
        text,
    )
    if match:
        return match.group(1).strip()

    return extract_between(
        text,
        start_markers=["registrar producto", "crear producto"],
        end_markers=[" categoria ", " stock ", " precio "],
    )


def extract_category_name_for_create(text: str) -> str | None:
    match = re.search(
        r"(?:de\s+la\s+|de\s+el\s+|del\s+|en\s+la\s+)?categoria\s+"
        r"(.+?)(?=\s+(?:con\s+(?:un\s+)?stock(?:\s+de)?|stock(?:\s+de)?|"
        r"con\s+(?:un\s+)?precio(?:\s+de)?|precio(?:\s+de)?|"
        r"en\s+(?:mi\s+)?sucursal)|$)",
        text,
    )
    if match:
        return match.group(1).strip()

    return extract_after_marker_until(
        text,
        " categoria ",
        [" stock ", " precio "],
    )


def extract_category_name_for_product_list(text: str) -> str | None:
    patterns = [
        r"(?:que\s+)?productos\s+(?:tengo\s+)?(?:en|de)\s+(?:la\s+)?categoria\s+(.+)$",
        r"(?:que\s+)?(?:tengo|hay)\s+en\s+(?:la\s+)?categoria\s+(.+)$",
        r"catalogo\s+de\s+(?:la\s+)?categoria\s+(.+)$",
        r"categoria\s+(.+?)\s+productos$",
    ]
    for pattern in patterns:
        match = re.search(pattern, text)
        if match:
            return match.group(1).strip()
    return None


def extract_stock_value(text: str) -> int | None:
    match = re.search(
        r"(?:con\s+(?:un\s+)?stock(?:\s+de)?|stock(?:\s+de)?)\s+([+-]?\d+)",
        text,
    )
    if match:
        return int(match.group(1))

    return extract_int_after(text, " stock ")


def extract_price_value(text: str) -> Decimal | None:
    match = re.search(
        r"(?:con\s+(?:un\s+)?precio(?:\s+de)?|precio(?:\s+de)?)\s+(\d+(?:\.\d{1,2})?)",
        text,
    )
    if match:
        try:
            return Decimal(match.group(1))
        except InvalidOperation:
            return None

    return extract_decimal_after(text, " precio ")


def extract_between(
    text: str,
    start_markers: list[str],
    end_markers: list[str],
) -> str | None:
    start_index = -1
    for marker in start_markers:
        if text.startswith(marker):
            start_index = len(marker)
            break
    if start_index < 0:
        return None

    tail = text[start_index:].strip()
    end_positions = [tail.find(marker.strip()) for marker in end_markers]
    positive_positions = [position for position in end_positions if position >= 0]
    end_index = min(positive_positions) if positive_positions else len(tail)
    value = tail[:end_index].strip()
    return value or None


def extract_after_marker_until(
    text: str,
    marker: str,
    end_markers: list[str],
) -> str | None:
    start_index = text.find(marker)
    if start_index < 0:
        return None

    tail = text[start_index + len(marker) :].strip()
    end_positions = [tail.find(end_marker.strip()) for end_marker in end_markers]
    positive_positions = [position for position in end_positions if position >= 0]
    end_index = min(positive_positions) if positive_positions else len(tail)
    value = tail[:end_index].strip()
    return value or None


def extract_after_any(text: str, markers: list[str]) -> str | None:
    for marker in markers:
        token = f" {marker} "
        if token in text:
            value = text.split(token, maxsplit=1)[1].strip()
            return value or None
    return None


def extract_int_after(text: str, marker: str) -> int | None:
    start_index = text.find(marker)
    if start_index < 0:
        return None

    match = re.match(r"([+-]?\d+)", text[start_index + len(marker) :].strip())
    return int(match.group(1)) if match else None


def extract_decimal_after(text: str, marker: str) -> Decimal | None:
    start_index = text.find(marker)
    if start_index < 0:
        return None

    match = re.match(r"(\d+(?:\.\d{1,2})?)", text[start_index + len(marker) :].strip())
    if not match:
        return None

    try:
        return Decimal(match.group(1))
    except InvalidOperation:
        return None
