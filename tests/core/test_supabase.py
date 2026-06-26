"""Smoke tests del endpoint health y configuracion."""

from __future__ import annotations


def test_health(client) -> None:
    response = client.get("/health")
    assert response.status_code == 200
    body = response.json()
    assert body["status"] == "ok"
    assert "env" in body


def test_app_name(client) -> None:
    from app.core.config import get_settings

    settings = get_settings()
    assert settings.app_name == "qypu"
