from datetime import datetime
from uuid import UUID

from pydantic import BaseModel, ConfigDict, Field


class ChannelCreateRequest(BaseModel):
    organization_id: UUID
    name: str = Field(min_length=1, max_length=100)
    channel_type: str = Field(min_length=1, max_length=20)


class ChannelResponse(BaseModel):
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
    linking_url: str | None = None

    model_config = ConfigDict(from_attributes=True)
