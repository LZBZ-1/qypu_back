from typing import Annotated

from fastapi import APIRouter, Depends, status

from app.api.dependencies import get_current_user
from app.core.config import Settings, get_settings
from app.core.security import AuthenticatedUser
from app.modules.channels.dependencies import get_create_channel_use_case
from app.modules.channels.presenter import build_channel_response
from app.modules.channels.schemas import ChannelCreateRequest, ChannelResponse
from app.modules.channels.service import CreateChannelUseCase

router = APIRouter()


@router.post("/", response_model=ChannelResponse, status_code=status.HTTP_201_CREATED)
async def create_channel(
    request: ChannelCreateRequest,
    use_case: Annotated[CreateChannelUseCase, Depends(get_create_channel_use_case)],
    current_user: Annotated[AuthenticatedUser, Depends(get_current_user)],
    settings: Annotated[Settings, Depends(get_settings)],
) -> ChannelResponse:
    channel = await use_case.execute(
        user_id=current_user.id,
        organization_id=request.organization_id,
        name=request.name,
        channel_type=request.channel_type,
    )
    return build_channel_response(channel, settings)
