from io import BytesIO

import httpx
import pytest
import respx
from PIL import Image

from app.core.config import Settings
from app.modules.telegram.media import (
    MAX_IMAGE_SIDE,
    GroqMediaClient,
    GroqMediaProcessingError,
    build_data_url,
    extract_message_text,
    optimize_image_for_vision,
)


def test_build_data_url() -> None:
    data_url = build_data_url(b"hello", "image/png")
    assert data_url == "data:image/png;base64,aGVsbG8="


def test_extract_message_text_from_string_content() -> None:
    payload = {"choices": [{"message": {"content": "  Una caja sobre una mesa.  "}}]}
    assert extract_message_text(payload) == "Una caja sobre una mesa."


def test_extract_message_text_from_list_content() -> None:
    payload = {
        "choices": [
            {
                "message": {
                    "content": [
                        {"type": "output_text", "text": "Hay una botella"},
                        {"type": "output_text", "text": "y una libreta."},
                    ]
                }
            }
        ]
    }
    assert extract_message_text(payload) == "Hay una botella\ny una libreta."


def test_optimize_image_for_vision_resizes_large_images() -> None:
    source = Image.new("RGB", (3000, 2000), color="white")
    buffer = BytesIO()
    source.save(buffer, format="PNG")

    optimized_bytes, optimized_content_type = optimize_image_for_vision(
        buffer.getvalue(),
        "image/png",
    )

    assert optimized_content_type == "image/jpeg"
    with Image.open(BytesIO(optimized_bytes)) as optimized:
        assert max(optimized.size) == MAX_IMAGE_SIDE


def test_optimize_image_for_vision_keeps_small_image_dimensions() -> None:
    source = Image.new("RGB", (800, 600), color="white")
    buffer = BytesIO()
    source.save(buffer, format="PNG")

    optimized_bytes, optimized_content_type = optimize_image_for_vision(
        buffer.getvalue(),
        "image/png",
    )

    assert optimized_content_type == "image/jpeg"
    with Image.open(BytesIO(optimized_bytes)) as optimized:
        assert optimized.size == (800, 600)


@pytest.mark.asyncio
@respx.mock
async def test_transcribe_audio_uses_groq_whisper_model() -> None:
    settings = Settings(
        supabase_url="https://example.supabase.co",
        supabase_service_role_key="service-role",
        database_url="postgresql://postgres:postgres@localhost:5432/postgres",
        groq_api_key="groq-test-key",
    )
    client = GroqMediaClient(settings)

    route = respx.post("https://api.groq.com/openai/v1/audio/transcriptions").mock(
        return_value=httpx.Response(200, json={"text": "registrar producto arroz"})
    )

    transcript = await client.transcribe_audio(b"audio", "nota.ogg", "audio/ogg")

    assert transcript == "registrar producto arroz"
    assert route.called
    request = route.calls.last.request
    assert b'name="model"' in request.content
    assert b"whisper-large-v3-turbo" in request.content


@pytest.mark.asyncio
@respx.mock
async def test_describe_image_uses_groq_vision_model() -> None:
    settings = Settings(
        supabase_url="https://example.supabase.co",
        supabase_service_role_key="service-role",
        database_url="postgresql://postgres:postgres@localhost:5432/postgres",
        groq_api_key="groq-test-key",
    )
    client = GroqMediaClient(settings)

    route = respx.post("https://api.groq.com/openai/v1/chat/completions").mock(
        return_value=httpx.Response(
            200,
            json={"choices": [{"message": {"content": "Veo una caja con etiquetas."}}]},
        )
    )

    description = await client.describe_image(b"image-bytes", "image/jpeg")

    assert description == "Veo una caja con etiquetas."
    assert route.called
    request = route.calls.last.request
    payload = request.read().decode("utf-8")
    assert "meta-llama/llama-4-scout-17b-16e-instruct" in payload


@pytest.mark.asyncio
async def test_media_client_requires_api_key() -> None:
    settings = Settings(
        supabase_url="https://example.supabase.co",
        supabase_service_role_key="service-role",
        database_url="postgresql://postgres:postgres@localhost:5432/postgres",
        groq_api_key=None,
    )
    client = GroqMediaClient(settings)

    with pytest.raises(GroqMediaProcessingError, match="GROQ_API_KEY"):
        await client.describe_image(b"image", "image/jpeg")
