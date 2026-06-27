from dataclasses import dataclass
from datetime import datetime
from typing import Any
from uuid import UUID


@dataclass(frozen=True)
class PendingTelegramAction:
    id: UUID
    channel_id: UUID
    action_type: str
    payload: dict[str, Any]
    expires_at: datetime


@dataclass(frozen=True)
class WarehouseIntent:
    action_type: str
    payload: dict[str, Any]
    requires_confirmation: bool
