import re

from app.modules.telegram.models import SellerIntent
from app.modules.telegram.warehouse import normalize_text


class SellerAgent:
    def parse(self, text: str) -> SellerIntent | None:
        normalized = normalize_text(text)
        if normalized in {"vendedor", "ventas", "venta", "quiero vender"}:
            return SellerIntent("help", {}, requires_confirmation=False)

        if re.search(
            r"\b(?:vender|venta|pedido|cliente|cobrar|boleta|factura|cotizar)\b",
            normalized,
        ):
            return SellerIntent("create_sale", {"text": normalized}, requires_confirmation=False)

        return None
