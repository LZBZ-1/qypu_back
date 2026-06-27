from typing import Annotated, Any

from aiogram.types import Update
from fastapi import APIRouter, Header, HTTPException, Request, status

from app.core.config import get_settings
from app.modules.telegram.bot import dispatcher, get_bot

router = APIRouter()


@router.post("/webhook")
async def telegram_webhook(
    request: Request,
    x_telegram_bot_api_secret_token: Annotated[str | None, Header()] = None,
) -> dict[str, bool]:
    settings = get_settings()
    if (
        settings.telegram_webhook_secret_token
        and x_telegram_bot_api_secret_token != settings.telegram_webhook_secret_token
    ):
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid secret")

    bot = get_bot()
    payload: dict[str, Any] = await request.json()
    update = Update.model_validate(payload, context={"bot": bot})
    await dispatcher.feed_update(bot, update)
    return {"ok": True}
