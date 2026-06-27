from app.modules.telegram.models import WarehouseIntent
from app.modules.telegram.warehouse import WarehouseAgent


class TelegramOrchestrator:
    def __init__(self, warehouse_agent: WarehouseAgent | None = None) -> None:
        self._warehouse_agent = warehouse_agent or WarehouseAgent()

    def route(self, text: str) -> WarehouseIntent | None:
        return self._warehouse_agent.parse(text)
