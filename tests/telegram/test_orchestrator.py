import json

import httpx
import pytest
import respx

from app.core.config import Settings
from app.modules.telegram.orchestrator import TelegramOrchestrator


@pytest.mark.asyncio
@respx.mock
async def test_route_create_product_uses_gpt_oss_model() -> None:
    settings = Settings(
        supabase_url="https://example.supabase.co",
        supabase_service_role_key="service-role",
        database_url="postgresql://postgres:postgres@localhost:5432/postgres",
        groq_api_key="groq-test-key",
        groq_text_model="openai/gpt-oss-120b",
    )
    orchestrator = TelegramOrchestrator(settings)

    route = respx.post("https://api.groq.com/openai/v1/chat/completions").mock(
        return_value=httpx.Response(
            200,
            json={
                "choices": [
                    {
                        "message": {
                            "content": json.dumps(
                                {
                                    "agent_type": "warehouse",
                                    "action_type": "create_product",
                                    "requires_confirmation": True,
                                    "payload": {
                                        "product_name": "arroz",
                                        "category_name": "alimentos",
                                        "unit_price": "12.50",
                                        "initial_stock": 10,
                                        "quantity": None,
                                        "delta": None,
                                        "new_name": None,
                                        "text": None,
                                    },
                                }
                            )
                        }
                    }
                ]
            },
        )
    )

    telegram_route = await orchestrator.route("crea un producto arroz categoria alimentos")

    assert telegram_route is not None
    assert telegram_route.agent_type == "warehouse"
    assert telegram_route.intent.action_type == "create_product"
    assert telegram_route.intent.payload["product_name"] == "arroz"
    assert telegram_route.intent.payload["category_name"] == "alimentos"
    assert telegram_route.intent.payload["unit_price"] == "12.50"
    assert telegram_route.intent.payload["initial_stock"] == 10
    assert route.called
    request_body = json.loads(route.calls.last.request.content.decode("utf-8"))
    assert request_body["model"] == "openai/gpt-oss-120b"
    assert request_body["response_format"]["type"] == "json_schema"


@pytest.mark.asyncio
@respx.mock
async def test_route_returns_none_when_model_marks_message_out_of_scope() -> None:
    settings = Settings(
        supabase_url="https://example.supabase.co",
        supabase_service_role_key="service-role",
        database_url="postgresql://postgres:postgres@localhost:5432/postgres",
        groq_api_key="groq-test-key",
    )
    orchestrator = TelegramOrchestrator(settings)

    respx.post("https://api.groq.com/openai/v1/chat/completions").mock(
        return_value=httpx.Response(
            200,
            json={
                "choices": [
                    {
                        "message": {
                            "content": json.dumps(
                                {
                                    "agent_type": "none",
                                    "action_type": "none",
                                    "requires_confirmation": False,
                                    "payload": {
                                        "product_name": None,
                                        "category_name": None,
                                        "unit_price": None,
                                        "initial_stock": None,
                                        "quantity": None,
                                        "delta": None,
                                        "new_name": None,
                                        "text": None,
                                    },
                                }
                            )
                        }
                    }
                ]
            },
        )
    )

    telegram_route = await orchestrator.route("cual es el clima de hoy")

    assert telegram_route is None
