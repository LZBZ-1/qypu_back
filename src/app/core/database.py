from collections.abc import AsyncIterator
from typing import Any

from psycopg import AsyncConnection
from psycopg.rows import dict_row

from app.core.config import get_settings


async def get_database_connection() -> AsyncIterator[AsyncConnection[Any]]:
    settings = get_settings()

    async with await AsyncConnection.connect(
        settings.database_url,
        row_factory=dict_row,
    ) as connection:
        yield connection
