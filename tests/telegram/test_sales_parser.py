import json

import httpx
import pytest
import respx

from app.core.config import Settings
from app.modules.telegram.sales_parser import TelegramSaleParser


@pytest.mark.asyncio
@respx.mock
async def test_sale_parser_extracts_multiple_items_from_natural_text() -> None:
    settings = Settings(
        supabase_url="https://example.supabase.co",
        supabase_service_role_key="service-role",
        database_url="postgresql://postgres:postgres@localhost:5432/postgres",
        groq_api_key="groq-test-key",
    )
    parser = TelegramSaleParser(settings)

    route = respx.post("https://api.groq.com/openai/v1/chat/completions").mock(
        return_value=httpx.Response(
            200,
            json={
                "choices": [
                    {
                        "message": {
                            "content": json.dumps(
                                {
                                    "client_name": None,
                                    "items": [
                                        {
                                            "product_name": "Coca cola medio litro",
                                            "quantity": 1,
                                            "unit_price": None,
                                        },
                                        {
                                            "product_name": "Casino",
                                            "quantity": 2,
                                            "unit_price": None,
                                        },
                                    ],
                                }
                            )
                        }
                    }
                ]
            },
        )
    )

    payload = await parser.parse(
        "he vendido una coca y dos galletas casino",
        ["Casino", "Coca cola medio litro"],
    )

    assert payload == {
        "items": [
            {"product_name": "Coca cola medio litro", "quantity": 1},
            {"product_name": "Casino", "quantity": 2},
        ]
    }
    assert route.called
    request_body = json.loads(route.calls.last.request.content.decode("utf-8"))
    assert request_body["response_format"]["json_schema"]["name"] == "sale_payload"
    assert "Catalogo disponible" in request_body["messages"][1]["content"]
    assert "- Casino" in request_body["messages"][1]["content"]
