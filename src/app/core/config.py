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
    groq_api_key: str | None = None
    groq_api_base_url: str = "https://api.groq.com/openai/v1"
    groq_text_model: str = "openai/gpt-oss-120b"
    groq_audio_model: str = "whisper-large-v3-turbo"
    groq_vision_model: str = "meta-llama/llama-4-scout-17b-16e-instruct"

    model_config = SettingsConfigDict(env_file=".env", env_file_encoding="utf-8", extra="ignore")


@lru_cache
def get_settings() -> Settings:
    return Settings()
