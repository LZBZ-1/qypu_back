import secrets
from uuid import UUID, uuid4

from app.modules.channels.exceptions import (
    ChannelLinkingCodeConflictError,
    ChannelOrganizationAccessDeniedError,
    InvalidChannelTypeError,
)
from app.modules.channels.models import Channel
from app.modules.channels.repository import ChannelsRepository

ALLOWED_CHANNEL_TYPES = {"telegram"}
PENDING_STATUS = "pending"
LINKING_CODE_ALPHABET = "23456789ABCDEFGHJKLMNPQRSTUVWXYZ"
LINKING_CODE_RANDOM_LENGTH = 10
LINKING_CODE_MAX_ATTEMPTS = 5


def generate_linking_code() -> str:
    random_part = "".join(
        secrets.choice(LINKING_CODE_ALPHABET) for _ in range(LINKING_CODE_RANDOM_LENGTH)
    )
    return f"PE-{random_part}"


class CreateChannelUseCase:
    def __init__(self, repository: ChannelsRepository) -> None:
        self._repository = repository

    async def execute(
        self,
        user_id: UUID,
        organization_id: UUID,
        name: str,
        channel_type: str,
    ) -> Channel:
        normalized_channel_type = channel_type.lower()

        if normalized_channel_type not in ALLOWED_CHANNEL_TYPES:
            raise InvalidChannelTypeError()

        has_access = await self._repository.has_active_organization_membership(
            user_id=user_id,
            organization_id=organization_id,
        )
        if not has_access:
            raise ChannelOrganizationAccessDeniedError()

        for _ in range(LINKING_CODE_MAX_ATTEMPTS):
            channel = Channel(
                id=uuid4(),
                organization_id=organization_id,
                name=name,
                channel_type=normalized_channel_type,
                status=PENDING_STATUS,
                linking_code=generate_linking_code(),
            )

            try:
                return await self._repository.create(channel)
            except ChannelLinkingCodeConflictError:
                continue

        raise ChannelLinkingCodeConflictError()


class ConnectTelegramChannelUseCase:
    def __init__(self, repository: ChannelsRepository) -> None:
        self._repository = repository

    async def execute(
        self,
        linking_code: str,
        chat_id: int,
        user_id: int,
        username: str | None,
        first_name: str | None,
        last_name: str | None,
    ) -> Channel:
        return await self._repository.connect_telegram(
            linking_code=linking_code,
            chat_id=chat_id,
            user_id=user_id,
            username=username,
            first_name=first_name,
            last_name=last_name,
        )
