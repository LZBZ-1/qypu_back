from functools import lru_cache

from aiogram import Bot, Dispatcher
from aiogram.client.default import DefaultBotProperties
from aiogram.enums import ParseMode
from fastapi import HTTPException, status

from app.core.config import get_settings
from app.modules.telegram.handlers import register_handlers

dispatcher = Dispatcher()
register_handlers(dispatcher)


@lru_cache
def get_bot() -> Bot:
    settings = get_settings()
    if not settings.telegram_bot_token:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="TELEGRAM_BOT_TOKEN is not configured",
        )

    return Bot(
        token=settings.telegram_bot_token,
        default=DefaultBotProperties(parse_mode=ParseMode.HTML),
    )
