import re

from app.modules.telegram.models import SellerIntent
from app.modules.telegram.warehouse import normalize_text


class SellerAgent:
    def parse(self, text: str) -> SellerIntent | None:
        normalized = normalize_text(text)
        if normalized in {"vendedor", "ventas", "venta", "quiero vender"}:
            return SellerIntent("help", {}, requires_confirmation=False)

        if re.search(r"\b(?:ver|listar|consultar|historial|revisar).*\bventas?\b", normalized):
            return SellerIntent("list_sales", {"text": text}, requires_confirmation=False)

        if re.match(r"^ventas?\s+(?:de|del|con|por|hoy|\d)", normalized):
            return SellerIntent("list_sales", {"text": text}, requires_confirmation=False)

        if re.search(
            r"\b(?:vender|venta|pedido|cliente|cobrar|boleta|factura|cotizar)\b",
            normalized,
        ):
            return SellerIntent("create_sale", {"text": text}, requires_confirmation=True)

        return None
