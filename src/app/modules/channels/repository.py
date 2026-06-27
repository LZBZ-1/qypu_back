from typing import Any, cast
from uuid import UUID

from psycopg import AsyncConnection, Error, errors

from app.modules.channels.exceptions import (
    ChannelAlreadyLinkedError,
    ChannelInvalidLinkingCodeError,
    ChannelLinkingCodeConflictError,
    ChannelOrganizationNotFoundError,
    ChannelPersistenceError,
)
from app.modules.channels.models import Channel


class ChannelsRepository:
    def __init__(self, connection: AsyncConnection[Any]) -> None:
        self._connection = connection

    async def has_active_organization_membership(
        self,
        user_id: UUID,
        organization_id: UUID,
    ) -> bool:
        result = await self._connection.execute(
            """
            SELECT 1
            FROM user_organizations
            WHERE
                user_id = %(user_id)s
                AND organization_id = %(organization_id)s
                AND status <> 'pending'
            LIMIT 1
            """,
            {
                "user_id": str(user_id),
                "organization_id": str(organization_id),
            },
        )
        return await result.fetchone() is not None

    async def create(self, channel: Channel) -> Channel:
        payload: dict[str, Any] = {
            "id": str(channel.id),
            "organization_id": str(channel.organization_id),
            "name": channel.name,
            "channel_type": channel.channel_type,
            "status": channel.status,
            "linking_code": channel.linking_code,
        }

        try:
            result = await self._connection.execute(
                """
                INSERT INTO channels (
                    id,
                    organization_id,
                    name,
                    channel_type,
                    status,
                    linking_code
                )
                VALUES (
                    %(id)s,
                    %(organization_id)s,
                    %(name)s,
                    %(channel_type)s,
                    %(status)s,
                    %(linking_code)s
                )
                RETURNING
                    id,
                    organization_id,
                    name,
                    channel_type,
                    status,
                    linking_code,
                    telegram_chat_id,
                    telegram_user_id,
                    telegram_username,
                    telegram_first_name,
                    telegram_last_name,
                    connected_at
                """,
                payload,
            )
            data = cast(dict[str, Any], await result.fetchone())
        except errors.UniqueViolation as exc:
            raise ChannelLinkingCodeConflictError() from exc
        except errors.ForeignKeyViolation as exc:
            raise ChannelOrganizationNotFoundError() from exc
        except Error as exc:
            raise ChannelPersistenceError() from exc

        return Channel(
            id=UUID(str(data["id"])),
            organization_id=UUID(str(data["organization_id"])),
            name=str(data["name"]),
            channel_type=str(data["channel_type"]),
            status=str(data["status"]),
            linking_code=str(data["linking_code"]),
            telegram_chat_id=data["telegram_chat_id"],
            telegram_user_id=data["telegram_user_id"],
            telegram_username=data["telegram_username"],
            telegram_first_name=data["telegram_first_name"],
            telegram_last_name=data["telegram_last_name"],
            connected_at=data["connected_at"],
        )

    async def connect_telegram(
        self,
        linking_code: str,
        chat_id: int,
        user_id: int,
        username: str | None,
        first_name: str | None,
        last_name: str | None,
    ) -> Channel:
        try:
            result = await self._connection.execute(
                """
                UPDATE channels
                SET
                    status = 'connected',
                    telegram_chat_id = %(chat_id)s,
                    telegram_user_id = %(user_id)s,
                    telegram_username = %(username)s,
                    telegram_first_name = %(first_name)s,
                    telegram_last_name = %(last_name)s,
                    connected_at = COALESCE(connected_at, now())
                WHERE
                    linking_code = %(linking_code)s
                    AND channel_type = 'telegram'
                    AND (
                        status = 'pending'
                        OR telegram_chat_id = %(chat_id)s
                    )
                    AND (
                        telegram_chat_id IS NULL
                        OR telegram_chat_id = %(chat_id)s
                    )
                RETURNING
                    id,
                    organization_id,
                    name,
                    channel_type,
                    status,
                    linking_code,
                    telegram_chat_id,
                    telegram_user_id,
                    telegram_username,
                    telegram_first_name,
                    telegram_last_name,
                    connected_at
                """,
                {
                    "linking_code": linking_code,
                    "chat_id": chat_id,
                    "user_id": user_id,
                    "username": username,
                    "first_name": first_name,
                    "last_name": last_name,
                },
            )
            data = await result.fetchone()
        except errors.UniqueViolation as exc:
            raise ChannelAlreadyLinkedError() from exc
        except Error as exc:
            raise ChannelPersistenceError() from exc

        if data is None:
            await self._raise_linking_error(linking_code)

        channel_data = cast(dict[str, Any], data)
        return Channel(
            id=UUID(str(channel_data["id"])),
            organization_id=UUID(str(channel_data["organization_id"])),
            name=str(channel_data["name"]),
            channel_type=str(channel_data["channel_type"]),
            status=str(channel_data["status"]),
            linking_code=str(channel_data["linking_code"]),
            telegram_chat_id=channel_data["telegram_chat_id"],
            telegram_user_id=channel_data["telegram_user_id"],
            telegram_username=channel_data["telegram_username"],
            telegram_first_name=channel_data["telegram_first_name"],
            telegram_last_name=channel_data["telegram_last_name"],
            connected_at=channel_data["connected_at"],
        )

    async def _raise_linking_error(self, linking_code: str) -> None:
        result = await self._connection.execute(
            """
            SELECT status, telegram_chat_id
            FROM channels
            WHERE linking_code = %(linking_code)s AND channel_type = 'telegram'
            """,
            {"linking_code": linking_code},
        )
        data = await result.fetchone()
        if data is None:
            raise ChannelInvalidLinkingCodeError()

        raise ChannelAlreadyLinkedError()

    async def find_connected_telegram_by_chat_id(self, chat_id: int) -> Channel | None:
        result = await self._connection.execute(
            """
            SELECT
                id,
                organization_id,
                name,
                channel_type,
                status,
                linking_code,
                telegram_chat_id,
                telegram_user_id,
                telegram_username,
                telegram_first_name,
                telegram_last_name,
                connected_at
            FROM channels
            WHERE
                channel_type = 'telegram'
                AND status = 'connected'
                AND telegram_chat_id = %(chat_id)s
            LIMIT 1
            """,
            {"chat_id": chat_id},
        )
        data = await result.fetchone()
        if data is None:
            return None

        channel_data = cast(dict[str, Any], data)
        return Channel(
            id=UUID(str(channel_data["id"])),
            organization_id=UUID(str(channel_data["organization_id"])),
            name=str(channel_data["name"]),
            channel_type=str(channel_data["channel_type"]),
            status=str(channel_data["status"]),
            linking_code=str(channel_data["linking_code"]),
            telegram_chat_id=channel_data["telegram_chat_id"],
            telegram_user_id=channel_data["telegram_user_id"],
            telegram_username=channel_data["telegram_username"],
            telegram_first_name=channel_data["telegram_first_name"],
            telegram_last_name=channel_data["telegram_last_name"],
            connected_at=channel_data["connected_at"],
        )
