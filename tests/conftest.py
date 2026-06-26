"""Fixtures comunes de pytest."""

from __future__ import annotations

from collections.abc import Generator

import pytest
from fastapi.testclient import TestClient

# Importacion diferida para no inicializar el cliente Supabase real al importar.


@pytest.fixture(scope="session")
def app() -> Generator:
    """Crea la app FastAPI para la sesion de tests."""
    from app.main import create_app

    test_app = create_app()
    yield test_app


@pytest.fixture(scope="session")
def client(app) -> Generator:
    """Cliente HTTP de test para la API."""
    with TestClient(app) as c:
        yield c
