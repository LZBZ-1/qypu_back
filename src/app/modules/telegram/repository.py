from datetime import UTC, datetime, timedelta
from typing import Any, cast
from uuid import UUID

from psycopg import AsyncConnection
from psycopg.types.json import Jsonb

from app.modules.telegram.models import PendingTelegramAction


class TelegramPendingActionsRepository:
    def __init__(self, connection: AsyncConnection[Any]) -> None:
        self._connection = connection

    async def find_active(self, channel_id: UUID) -> PendingTelegramAction | None:
        await self.delete_expired(channel_id)
        result = await self._connection.execute(
            """
            SELECT id, channel_id, action_type, payload, expires_at
            FROM telegram_pending_actions
            WHERE channel_id = %(channel_id)s
              AND expires_at > now()
            ORDER BY created_at DESC
            LIMIT 1
            """,
            {"channel_id": str(channel_id)},
        )
        row = await result.fetchone()
        if row is None:
            return None

        data = cast(dict[str, Any], row)
        return PendingTelegramAction(
            id=UUID(str(data["id"])),
            channel_id=UUID(str(data["channel_id"])),
            action_type=str(data["action_type"]),
            payload=cast(dict[str, Any], data["payload"]),
            expires_at=cast(datetime, data["expires_at"]),
        )

    async def save(
        self,
        channel_id: UUID,
        action_type: str,
        payload: dict[str, Any],
        ttl_minutes: int = 10,
    ) -> PendingTelegramAction:
        await self.clear(channel_id)
        expires_at = datetime.now(UTC) + timedelta(minutes=ttl_minutes)
        result = await self._connection.execute(
            """
            INSERT INTO telegram_pending_actions (channel_id, action_type, payload, expires_at)
            VALUES (%(channel_id)s, %(action_type)s, %(payload)s, %(expires_at)s)
            RETURNING id, channel_id, action_type, payload, expires_at
            """,
            {
                "channel_id": str(channel_id),
                "action_type": action_type,
                "payload": Jsonb(payload),
                "expires_at": expires_at,
            },
        )
        data = cast(dict[str, Any], await result.fetchone())
        return PendingTelegramAction(
            id=UUID(str(data["id"])),
            channel_id=UUID(str(data["channel_id"])),
            action_type=str(data["action_type"]),
            payload=cast(dict[str, Any], data["payload"]),
            expires_at=cast(datetime, data["expires_at"]),
        )

    async def clear(self, channel_id: UUID) -> None:
        await self._connection.execute(
            """
            DELETE FROM telegram_pending_actions
            WHERE channel_id = %(channel_id)s
            """,
            {"channel_id": str(channel_id)},
        )

    async def delete_expired(self, channel_id: UUID) -> None:
        await self._connection.execute(
            """
            DELETE FROM telegram_pending_actions
            WHERE channel_id = %(channel_id)s
              AND expires_at <= now()
            """,
            {"channel_id": str(channel_id)},
        )
