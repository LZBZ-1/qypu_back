from datetime import UTC, datetime, timedelta
from typing import Any
from uuid import uuid4

import pytest

from app.modules.categories.models import Category
from app.modules.channels.models import Channel
from app.modules.products.models import Product
from app.modules.telegram.models import PendingTelegramAction, WarehouseIntent
from app.modules.telegram.service import (
    _agent_help_message,
    _ask_to_resolve_product_category_if_needed,
    _execute_write_action,
    _handle_create_category_ambiguity_reply,
    _handle_create_category_name_reply,
    _handle_create_product_category_reply,
    _handle_create_product_name_reply,
    _handle_pending_action,
    _handle_product_category_decision,
    _interpret_category_names,
    _missing_payload_message,
    _start_create_category_flow,
)


class FakePendingRepository:
    def __init__(self) -> None:
        self.saved_action_type: str | None = None
        self.saved_payload: dict[str, Any] | None = None
        self.cleared = False

    async def save(
        self,
        channel_id: object,
        action_type: str,
        payload: dict[str, Any],
        ttl_minutes: int = 10,
    ) -> PendingTelegramAction:
        self.saved_action_type = action_type
        self.saved_payload = payload
        return PendingTelegramAction(
            id=uuid4(),
            channel_id=uuid4(),
            action_type=action_type,
            payload=payload,
            expires_at=datetime.now(UTC) + timedelta(minutes=ttl_minutes),
        )

    async def clear(self, channel_id: object) -> None:
        self.cleared = True


class FakeCategoriesUseCase:
    def __init__(
        self,
        exact_category: Category | None = None,
        similar_category: Category | None = None,
    ) -> None:
        self.exact_category = exact_category
        self.similar_category = similar_category
        self.created_category: Category | None = None
        self.created_categories: list[Category] = []

    async def find_category_by_name(
        self,
        organization_id: object,
        category_name: str,
    ) -> Category | None:
        return self.exact_category

    async def find_similar_category(
        self,
        organization_id: object,
        category_name: str,
    ) -> Category | None:
        return self.similar_category

    async def create_category(
        self,
        organization_id: object,
        name: str,
    ) -> Category:
        self.created_category = Category(id=uuid4(), organization_id=uuid4(), name=name)
        self.created_categories.append(self.created_category)
        return self.created_category


class FakeProductsUseCase:
    def __init__(self) -> None:
        self.created_product_payload: dict[str, Any] | None = None

    async def create_product(
        self,
        organization_id: object,
        name: str,
        category_name: str,
        unit_price: object,
        initial_stock: object,
    ) -> tuple[Product, None]:
        self.created_product_payload = {
            "name": name,
            "category_name": category_name,
            "unit_price": unit_price,
            "initial_stock": initial_stock,
        }
        return (
            Product(
                id=uuid4(),
                organization_id=uuid4(),
                category_id=uuid4(),
                name=name,
                unit_price=unit_price,
            ),
            None,
        )


@pytest.fixture
def channel() -> Channel:
    return Channel(
        id=uuid4(),
        organization_id=uuid4(),
        name="Telegram",
        channel_type="telegram",
        status="connected",
        linking_code="ABC123",
    )


def create_product_intent(category_name: str) -> WarehouseIntent:
    return WarehouseIntent(
        action_type="create_product",
        payload={
            "product_name": "Sapito",
            "category_name": category_name,
            "unit_price": "1.20",
            "initial_stock": 20,
        },
        requires_confirmation=True,
    )


def create_product_pending(channel: Channel, category_name: str) -> PendingTelegramAction:
    return PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="create_product",
        payload={
            "product_name": "Sapito",
            "category_name": category_name,
            "unit_price": "1.20",
            "initial_stock": 20,
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )


def test_agent_help_message_uses_organization_name() -> None:
    assert _agent_help_message("warehouse", "Bodega Central").startswith(
        "Soy el almacenero de Bodega Central."
    )
    assert _agent_help_message("seller", "Bodega Central").startswith(
        "Soy el vendedor de Bodega Central."
    )


def test_create_product_missing_name_message_guides_next_reply() -> None:
    response = _missing_payload_message(
        WarehouseIntent("create_product", {}, requires_confirmation=True)
    )

    assert response == (
        "Perfecto, vamos a registrar un producto.\n"
        "Cual es el nombre del producto que quieres registrar? "
        "Puedes responder solo con el nombre."
    )


@pytest.mark.asyncio
async def test_create_product_missing_name_reply_asks_for_category(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="collect_create_product_name",
        payload={},
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_create_product_name_reply(
        channel=channel,
        pending=pending,
        text="pepsi",
        pending_repository=pending_repository,
    )

    assert response == (
        "Perfecto, vamos a registrar el producto pepsi.\n"
        "Cual es la categoria del producto? Puedes responder solo con el nombre."
    )
    assert pending_repository.saved_action_type == "collect_create_product_category"
    assert pending_repository.saved_payload == {"product_name": "pepsi"}


@pytest.mark.asyncio
async def test_create_product_missing_category_reply_saves_confirmation(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="collect_create_product_category",
        payload={
            "product_name": "Sapito",
            "unit_price": "1.20",
            "initial_stock": 20,
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_create_product_category_reply(
        channel=channel,
        pending=pending,
        text="alimentos",
        pending_repository=pending_repository,
    )

    assert response == (
        "Voy a registrar este producto:\n"
        "Producto: Sapito\n"
        "Categoria: alimentos\n"
        "Precio: S/ 1.20\n"
        "Stock inicial: 20\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_action_type == "create_product"
    assert pending_repository.saved_payload == {
        "product_name": "Sapito",
        "unit_price": "1.20",
        "initial_stock": 20,
        "category_name": "alimentos",
    }


@pytest.mark.asyncio
async def test_create_product_pending_confirmation_accepts_name_correction(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="create_product",
        payload={
            "product_name": "agua san carlos",
            "category_name": "Bebidas",
            "initial_stock": 20,
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_pending_action(
        channel=channel,
        pending=pending,
        text='q el nombre sea "agua san carlos"',
        original_text='Q el nombre sea "Agua San Carlos"',
        pending_repository=pending_repository,
        products_use_case=FakeProductsUseCase(),
        categories_use_case=FakeCategoriesUseCase(),
    )

    assert response == (
        "Voy a registrar este producto:\n"
        "Producto: Agua San Carlos\n"
        "Categoria: Bebidas\n"
        "Stock inicial: 20\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_action_type == "create_product"
    assert pending_repository.saved_payload == {
        "product_name": "Agua San Carlos",
        "category_name": "Bebidas",
        "initial_stock": 20,
    }


@pytest.mark.asyncio
async def test_create_product_pending_confirmation_keeps_pending_for_out_of_context_reply(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="create_product",
        payload={
            "product_name": "agua san carlos",
            "category_name": "Bebidas",
            "initial_stock": 20,
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_pending_action(
        channel=channel,
        pending=pending,
        text="quiero registrar categorias limpieza",
        original_text="quiero registrar categorias limpieza",
        pending_repository=pending_repository,
        products_use_case=FakeProductsUseCase(),
        categories_use_case=FakeCategoriesUseCase(),
    )

    assert response == (
        "Hay una accion pendiente. Responde SI para guardar o NO para cancelar.\n\n"
        "Voy a registrar este producto:\n"
        "Producto: agua san carlos\n"
        "Categoria: Bebidas\n"
        "Stock inicial: 20"
    )
    assert pending_repository.saved_action_type is None


@pytest.mark.asyncio
async def test_create_category_missing_name_reply_saves_confirmation(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()

    response = await _handle_create_category_name_reply(
        channel=channel,
        text="sillas",
        pending_repository=pending_repository,
    )

    assert response == (
        "Voy a registrar esta categoria:\n"
        "Categoria: sillas\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_action_type == "create_category"
    assert pending_repository.saved_payload == {"category_name": "sillas"}


def test_interpret_category_list_splits_commas_and_final_y() -> None:
    interpretation = _interpret_category_names("sillones, mesas, muebles y pizarras")

    assert interpretation.categories == ["sillones", "mesas", "muebles", "pizarras"]
    assert interpretation.ambiguous_options is None


def test_interpret_category_list_with_single_category_clarification() -> None:
    interpretation = _interpret_category_names(
        "sillones, mesas, muebles y pizarras pero muebles y pizarras en una sola categoria"
    )

    assert interpretation.categories == ["sillones", "mesas", "muebles y pizarras"]
    assert interpretation.ambiguous_options is None


def test_interpret_direct_single_category_clarification() -> None:
    interpretation = _interpret_category_names("muebles y pizarras en una sola categoria")

    assert interpretation.categories == ["muebles y pizarras"]
    assert interpretation.ambiguous_options is None


def test_interpret_category_without_comma_and_y_is_ambiguous() -> None:
    interpretation = _interpret_category_names("Alimentos y Bebidas")

    assert interpretation.categories is None
    assert interpretation.ambiguous_options == {
        "una_categoria": ["Alimentos y Bebidas"],
        "varias_categorias": ["Alimentos", "Bebidas"],
    }


def test_interpret_quoted_category_keeps_commas_and_y_together() -> None:
    interpretation = _interpret_category_names('"Alimentos y Bebidas", Limpieza')

    assert interpretation.categories == ["Alimentos y Bebidas", "Limpieza"]
    assert interpretation.ambiguous_options is None


@pytest.mark.asyncio
async def test_create_category_ambiguous_reply_saves_pending_options(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()

    response = await _handle_create_category_name_reply(
        channel=channel,
        text="Alimentos y Bebidas",
        pending_repository=pending_repository,
    )

    assert "Puedo interpretarlo de dos formas" in response
    assert pending_repository.saved_action_type == "resolve_create_category_ambiguity"
    assert pending_repository.saved_payload == {
        "intencion": "crear_categoria",
        "estado": "esperando_confirmacion_categoria_ambigua",
        "opciones": {
            "una_categoria": ["Alimentos y Bebidas"],
            "varias_categorias": ["Alimentos", "Bebidas"],
        },
    }


@pytest.mark.asyncio
async def test_create_category_ambiguity_reply_as_one_category(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="resolve_create_category_ambiguity",
        payload={
            "intencion": "crear_categoria",
            "estado": "esperando_confirmacion_categoria_ambigua",
            "opciones": {
                "una_categoria": ["Alimentos y Bebidas"],
                "varias_categorias": ["Alimentos", "Bebidas"],
            },
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_create_category_ambiguity_reply(
        channel=channel,
        pending=pending,
        text="una sola",
        pending_repository=pending_repository,
    )

    assert "Categoria: Alimentos y Bebidas" in response
    assert pending_repository.saved_action_type == "create_category"
    assert pending_repository.saved_payload == {"category_name": "Alimentos y Bebidas"}


@pytest.mark.asyncio
async def test_create_category_ambiguity_reply_as_multiple_categories(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="resolve_create_category_ambiguity",
        payload={
            "intencion": "crear_categoria",
            "estado": "esperando_confirmacion_categoria_ambigua",
            "opciones": {
                "una_categoria": ["Alimentos y Bebidas"],
                "varias_categorias": ["Alimentos", "Bebidas"],
            },
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_create_category_ambiguity_reply(
        channel=channel,
        pending=pending,
        text="por separado",
        pending_repository=pending_repository,
    )

    assert response == (
        "Voy a registrar estas categorias:\n"
        "- Alimentos\n"
        "- Bebidas\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_action_type == "create_category"
    assert pending_repository.saved_payload == {"category_names": ["Alimentos", "Bebidas"]}


@pytest.mark.asyncio
async def test_create_category_pending_confirmation_accepts_single_category_clarification(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="create_category",
        payload={"category_names": ["sillones", "mesas", "muebles", "pizarras"]},
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_pending_action(
        channel=channel,
        pending=pending,
        text="pero muebles y pizarras en una sola categoria",
        original_text="pero muebles y pizarras en una sola categoria",
        pending_repository=pending_repository,
        products_use_case=FakeProductsUseCase(),
        categories_use_case=FakeCategoriesUseCase(),
    )

    assert response == (
        "Voy a registrar estas categorias:\n"
        "- sillones\n"
        "- mesas\n"
        "- muebles y pizarras\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_action_type == "create_category"
    assert pending_repository.saved_payload == {
        "category_names": ["sillones", "mesas", "muebles y pizarras"]
    }


@pytest.mark.asyncio
async def test_execute_create_category_registers_multiple_categories(
    channel: Channel,
) -> None:
    categories_use_case = FakeCategoriesUseCase()

    response = await _execute_write_action(
        channel=channel,
        action_type="create_category",
        payload={"category_names": ["sillones", "mesas"]},
        products_use_case=FakeProductsUseCase(),
        categories_use_case=categories_use_case,
    )

    assert response == "Categorias registradas:\n- sillones\n- mesas"
    assert [category.name for category in categories_use_case.created_categories] == [
        "sillones",
        "mesas",
    ]


@pytest.mark.asyncio
async def test_start_create_category_flow_interprets_comma_list_from_original_text(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()

    response = await _start_create_category_flow(
        channel=channel,
        intent=WarehouseIntent(
            "create_category",
            {
                "category_name": "sillones, mesas, muebles y pizarras",
                "text": "Quiero crear la categoria sillones, mesas, muebles y pizarras",
            },
            requires_confirmation=True,
        ),
        pending_repository=pending_repository,
    )

    assert response == (
        "Voy a registrar estas categorias:\n"
        "- sillones\n"
        "- mesas\n"
        "- muebles\n"
        "- pizarras\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_action_type == "create_category"
    assert pending_repository.saved_payload == {
        "category_names": ["sillones", "mesas", "muebles", "pizarras"]
    }


@pytest.mark.asyncio
async def test_start_create_category_flow_respects_quoted_category_from_original_text(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()

    response = await _start_create_category_flow(
        channel=channel,
        intent=WarehouseIntent(
            "create_category",
            {
                "category_name": "Alimentos y Bebidas, Limpieza",
                "text": 'Crear categorias "Alimentos y Bebidas", Limpieza',
            },
            requires_confirmation=True,
        ),
        pending_repository=pending_repository,
    )

    assert response == (
        "Voy a registrar estas categorias:\n"
        "- Alimentos y Bebidas\n"
        "- Limpieza\n\n"
        "Responde SI para guardar o NO para cancelar."
    )
    assert pending_repository.saved_payload == {
        "category_names": ["Alimentos y Bebidas", "Limpieza"]
    }


@pytest.mark.asyncio
async def test_create_product_confirmation_asks_to_create_missing_category_after_yes(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()

    response = await _ask_to_resolve_product_category_if_needed(
        channel=channel,
        pending=create_product_pending(channel, "Dulces"),
        pending_repository=pending_repository,
        categories_use_case=FakeCategoriesUseCase(),
    )

    assert "No encontre la categoria Dulces." in response
    assert "Responde SI para generar la categoria Dulces" in response
    assert pending_repository.saved_action_type == "resolve_product_category"
    assert pending_repository.saved_payload is not None
    assert pending_repository.saved_payload["requested_category_name"] == "Dulces"


@pytest.mark.asyncio
async def test_create_product_confirmation_asks_to_use_similar_or_create_new_after_yes(
    channel: Channel,
) -> None:
    similar = Category(id=uuid4(), organization_id=channel.organization_id, name="Dulceria")
    pending_repository = FakePendingRepository()

    response = await _ask_to_resolve_product_category_if_needed(
        channel=channel,
        pending=create_product_pending(channel, "Dulces"),
        pending_repository=pending_repository,
        categories_use_case=FakeCategoriesUseCase(similar_category=similar),
    )

    assert "encontre una similar: Dulceria" in response
    assert "USAR para usar Dulceria" in response
    assert "CREAR para registrar Dulces" in response
    assert pending_repository.saved_payload is not None
    assert pending_repository.saved_payload["suggested_category_name"] == "Dulceria"


@pytest.mark.asyncio
async def test_category_decision_use_existing_saves_product_confirmation(
    channel: Channel,
) -> None:
    pending_repository = FakePendingRepository()
    products_use_case = FakeProductsUseCase()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="resolve_product_category",
        payload={
            "product_name": "Sapito",
            "category_name": "Dulces",
            "requested_category_name": "Dulces",
            "suggested_category_name": "Dulceria",
            "unit_price": "1.20",
            "initial_stock": 20,
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_product_category_decision(
        channel=channel,
        pending=pending,
        text="usar",
        pending_repository=pending_repository,
        products_use_case=products_use_case,
        categories_use_case=FakeCategoriesUseCase(),
    )

    assert "Producto registrado: Sapito." in response
    assert pending_repository.cleared is True
    assert products_use_case.created_product_payload is not None
    assert products_use_case.created_product_payload["category_name"] == "Dulceria"


@pytest.mark.asyncio
async def test_category_decision_yes_creates_category_and_product(channel: Channel) -> None:
    pending_repository = FakePendingRepository()
    categories_use_case = FakeCategoriesUseCase()
    products_use_case = FakeProductsUseCase()
    pending = PendingTelegramAction(
        id=uuid4(),
        channel_id=channel.id,
        action_type="resolve_product_category",
        payload={
            "product_name": "Sapito",
            "category_name": "Dulces",
            "requested_category_name": "Dulces",
            "unit_price": "1.20",
            "initial_stock": 20,
        },
        expires_at=datetime.now(UTC) + timedelta(minutes=10),
    )

    response = await _handle_product_category_decision(
        channel=channel,
        pending=pending,
        text="si",
        pending_repository=pending_repository,
        products_use_case=products_use_case,
        categories_use_case=categories_use_case,
    )

    assert "Categoria y producto registrados: Dulces / Sapito." in response
    assert pending_repository.cleared is True
    assert categories_use_case.created_category is not None
    assert products_use_case.created_product_payload is not None
    assert products_use_case.created_product_payload["category_name"] == "Dulces"
