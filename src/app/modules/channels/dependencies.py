from typing import Annotated, Any

from fastapi import Depends
from psycopg import AsyncConnection

from app.core.database import get_database_connection
from app.modules.channels.repository import ChannelsRepository
from app.modules.channels.service import CreateChannelUseCase


def get_channels_repository(
    connection: Annotated[AsyncConnection[Any], Depends(get_database_connection)],
) -> ChannelsRepository:
    return ChannelsRepository(connection)


def get_create_channel_use_case(
    repository: Annotated[ChannelsRepository, Depends(get_channels_repository)],
) -> CreateChannelUseCase:
    return CreateChannelUseCase(repository)
