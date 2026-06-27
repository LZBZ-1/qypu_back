from fastapi import APIRouter

from app.modules.channels.router import router as channels_router
from app.modules.telegram.router import router as telegram_router

api_router = APIRouter()
api_router.include_router(channels_router, prefix="/channels", tags=["channels"])
api_router.include_router(telegram_router, prefix="/telegram", tags=["telegram"])
