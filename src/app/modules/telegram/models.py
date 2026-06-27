from dataclasses import dataclass
from datetime import datetime
from typing import Any, Literal
from uuid import UUID

type AgentType = Literal["seller", "warehouse"]


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


@dataclass(frozen=True)
class SellerIntent:
    action_type: str
    payload: dict[str, Any]
    requires_confirmation: bool


type TelegramIntent = SellerIntent | WarehouseIntent


@dataclass(frozen=True)
class TelegramRoute:
    agent_type: AgentType
    intent: TelegramIntent
