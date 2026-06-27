from app.modules.telegram.models import TelegramRoute
from app.modules.telegram.seller import SellerAgent
from app.modules.telegram.warehouse import WarehouseAgent


class TelegramOrchestrator:
    def __init__(
        self,
        warehouse_agent: WarehouseAgent | None = None,
        seller_agent: SellerAgent | None = None,
    ) -> None:
        self._warehouse_agent = warehouse_agent or WarehouseAgent()
        self._seller_agent = seller_agent or SellerAgent()

    def route(self, text: str) -> TelegramRoute | None:
        warehouse_intent = self._warehouse_agent.parse(text)
        if warehouse_intent is not None:
            return TelegramRoute(agent_type="warehouse", intent=warehouse_intent)

        seller_intent = self._seller_agent.parse(text)
        if seller_intent is not None:
            return TelegramRoute(agent_type="seller", intent=seller_intent)

        return None
