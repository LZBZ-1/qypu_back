from dataclasses import dataclass
from datetime import datetime
from uuid import UUID


@dataclass(frozen=True)
class Channel:
    id: UUID
    organization_id: UUID
    name: str
    channel_type: str
    status: str
    linking_code: str
    telegram_chat_id: int | None = None
    telegram_user_id: int | None = None
    telegram_username: str | None = None
    telegram_first_name: str | None = None
    telegram_last_name: str | None = None
    connected_at: datetime | None = None
    organization_name: str | None = None
