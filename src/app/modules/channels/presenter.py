from app.core.config import Settings
from app.modules.channels.models import Channel
from app.modules.channels.schemas import ChannelResponse


def build_channel_response(channel: Channel, settings: Settings) -> ChannelResponse:
    response = ChannelResponse.model_validate(channel)
    if channel.channel_type != "telegram" or not settings.telegram_bot_username:
        return response

    return response.model_copy(
        update={
            "linking_url": f"https://t.me/{settings.telegram_bot_username}?start={channel.linking_code}"
        }
    )
