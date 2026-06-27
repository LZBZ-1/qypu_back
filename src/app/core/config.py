from functools import lru_cache

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    supabase_url: str
    supabase_service_role_key: str
    database_url: str
    port: int = 8765
    telegram_bot_token: str | None = None
    telegram_webhook_secret_token: str | None = None
    telegram_bot_username: str | None = None
    ngrok_authtoken: str | None = None

    model_config = SettingsConfigDict(env_file=".env", env_file_encoding="utf-8", extra="ignore")


@lru_cache
def get_settings() -> Settings:
    return Settings()
