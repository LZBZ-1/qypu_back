from decimal import Decimal
from typing import Any

from psycopg import AsyncConnection
from psycopg.rows import dict_row

from app.core.config import get_settings
from app.core.exceptions import DomainError
from app.modules.channels.models import Channel
from app.modules.channels.repository import ChannelsRepository
from app.modules.channels.service import ConnectTelegramChannelUseCase
from app.modules.products.exceptions import (
    ProductBranchNotFoundError,
    ProductCategoryNotFoundError,
    ProductNotFoundError,
    ProductStockWouldBeNegativeError,
)
from app.modules.products.repository import ProductsRepository
from app.modules.products.service import ProductsUseCase
from app.modules.telegram.models import PendingTelegramAction, WarehouseIntent
from app.modules.telegram.orchestrator import TelegramOrchestrator
from app.modules.telegram.repository import TelegramPendingActionsRepository
from app.modules.telegram.warehouse import CANCEL_WORDS, CONFIRM_WORDS, normalize_text


async def connect_telegram_channel(
    linking_code: str,
    chat_id: int,
    user_id: int,
    username: str | None,
    first_name: str | None,
    last_name: str | None,
) -> Channel:
    settings = get_settings()
    async with await AsyncConnection.connect(
        settings.database_url,
        row_factory=dict_row,
    ) as connection:
        use_case = ConnectTelegramChannelUseCase(ChannelsRepository(connection))
        return await use_case.execute(
            linking_code=linking_code,
            chat_id=chat_id,
            user_id=user_id,
            username=username,
            first_name=first_name,
            last_name=last_name,
        )


async def handle_telegram_text_message(chat_id: int, text: str) -> str:
    settings = get_settings()
    async with await AsyncConnection.connect(
        settings.database_url,
        row_factory=dict_row,
    ) as connection:
        channels_repository = ChannelsRepository(connection)
        channel = await channels_repository.find_connected_telegram_by_chat_id(chat_id)
        if channel is None:
            return "Este chat no esta vinculado. Abre el enlace de vinculacion generado desde Qypu."

        pending_repository = TelegramPendingActionsRepository(connection)
        products_use_case = ProductsUseCase(ProductsRepository(connection))
        pending = await pending_repository.find_active(channel.id)
        normalized_text = normalize_text(text)

        if pending is not None:
            return await _handle_pending_action(
                channel=channel,
                pending=pending,
                text=normalized_text,
                pending_repository=pending_repository,
                products_use_case=products_use_case,
            )

        intent = TelegramOrchestrator().route(text)
        if intent is None:
            return _help_message()

        if intent.action_type == "help":
            return _help_message()

        if intent.requires_confirmation:
            await pending_repository.save(
                channel_id=channel.id,
                action_type=intent.action_type,
                payload=intent.payload,
            )
            return _confirmation_message(intent)

        return await _execute_read_intent(
            channel=channel,
            intent=intent,
            products_use_case=products_use_case,
        )


async def _handle_pending_action(
    channel: Channel,
    pending: PendingTelegramAction,
    text: str,
    pending_repository: TelegramPendingActionsRepository,
    products_use_case: ProductsUseCase,
) -> str:
    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    if text not in CONFIRM_WORDS:
        return (
            "Hay una accion pendiente. Responde SI para guardar o NO para cancelar.\n\n"
            f"{_pending_summary(pending.action_type, pending.payload)}"
        )

    try:
        response = await _execute_write_action(
            channel=channel,
            action_type=pending.action_type,
            payload=pending.payload,
            products_use_case=products_use_case,
        )
    except DomainError as exc:
        await pending_repository.clear(channel.id)
        return _domain_error_message(exc)

    await pending_repository.clear(channel.id)
    return response


async def _execute_read_intent(
    channel: Channel,
    intent: WarehouseIntent,
    products_use_case: ProductsUseCase,
) -> str:
    if intent.action_type == "list_products":
        products = await products_use_case.list_products(channel.organization_id)
        if not products:
            return "Todavia no hay productos registrados."

        lines = ["Productos registrados:"]
        for product in products:
            price = f" - S/ {product.unit_price}" if product.unit_price is not None else ""
            lines.append(f"- {product.name}{price}")
        return "\n".join(lines)

    if intent.action_type == "get_stock":
        try:
            product, quantity = await products_use_case.get_product_stock(
                organization_id=channel.organization_id,
                product_name=str(intent.payload["product_name"]),
            )
        except ProductNotFoundError:
            return "No encontre ese producto. Prueba con el nombre completo."

        return f"{product.name} tiene {quantity} unidades en stock."

    return _help_message()


async def _execute_write_action(
    channel: Channel,
    action_type: str,
    payload: dict[str, Any],
    products_use_case: ProductsUseCase,
) -> str:
    if action_type == "create_product":
        product, stock = await products_use_case.create_product(
            organization_id=channel.organization_id,
            name=str(payload["product_name"]),
            category_name=str(payload["category_name"]),
            unit_price=_payload_decimal(payload.get("unit_price")),
            initial_stock=_payload_int(payload.get("initial_stock")),
        )
        stock_text = f" Stock inicial: {stock.quantity}." if stock is not None else ""
        price_text = f" Precio: S/ {product.unit_price}." if product.unit_price is not None else ""
        return f"Producto registrado: {product.name}.{price_text}{stock_text}"

    if action_type == "set_stock":
        product, stock = await products_use_case.set_product_stock(
            organization_id=channel.organization_id,
            product_name=str(payload["product_name"]),
            quantity=int(payload["quantity"]),
        )
        return f"Stock actualizado: {product.name} ahora tiene {stock.quantity} unidades."

    if action_type == "increment_stock":
        product, stock = await products_use_case.increment_product_stock(
            organization_id=channel.organization_id,
            product_name=str(payload["product_name"]),
            delta=int(payload["delta"]),
        )
        return f"Stock actualizado: {product.name} ahora tiene {stock.quantity} unidades."

    if action_type == "rename_product":
        product = await products_use_case.rename_product(
            organization_id=channel.organization_id,
            product_name=str(payload["product_name"]),
            new_name=str(payload["new_name"]),
        )
        return f"Producto actualizado: ahora se llama {product.name}."

    return _help_message()


def _confirmation_message(intent: WarehouseIntent) -> str:
    return (
        f"{_pending_summary(intent.action_type, intent.payload)}\n\n"
        "Responde SI para guardar o NO para cancelar."
    )


def _pending_summary(action_type: str, payload: dict[str, Any]) -> str:
    if action_type == "create_product":
        price = f"\nPrecio: S/ {payload['unit_price']}" if "unit_price" in payload else ""
        stock = f"\nStock inicial: {payload['initial_stock']}" if "initial_stock" in payload else ""
        return (
            "Voy a registrar este producto:\n"
            f"Producto: {payload['product_name']}\n"
            f"Categoria: {payload['category_name']}"
            f"{price}{stock}"
        )

    if action_type == "set_stock":
        return (
            "Voy a fijar el stock:\n"
            f"Producto: {payload['product_name']}\n"
            f"Cantidad: {payload['quantity']}"
        )

    if action_type == "increment_stock":
        return (
            "Voy a mover el stock:\n"
            f"Producto: {payload['product_name']}\n"
            f"Movimiento: {payload['delta']}"
        )

    if action_type == "rename_product":
        return (
            "Voy a editar este producto:\n"
            f"Producto actual: {payload['product_name']}\n"
            f"Nuevo nombre: {payload['new_name']}"
        )

    return "Voy a ejecutar una accion de productos."


def _domain_error_message(exc: DomainError) -> str:
    if isinstance(exc, ProductCategoryNotFoundError):
        return "No encontre esa categoria. Revisa el nombre e intentalo de nuevo."
    if isinstance(exc, ProductBranchNotFoundError):
        return "No encontre una sucursal para guardar el stock."
    if isinstance(exc, ProductNotFoundError):
        return "No encontre ese producto. Prueba con el nombre completo."
    if isinstance(exc, ProductStockWouldBeNegativeError):
        return "No puedo dejar el stock en negativo."
    return "No pude completar la accion. Intentalo nuevamente."


def _payload_decimal(value: object) -> Decimal | None:
    return Decimal(str(value)) if value is not None else None


def _payload_int(value: object) -> int | None:
    if value is None:
        return None
    if isinstance(value, int):
        return value
    if isinstance(value, str):
        return int(value)
    raise TypeError("payload value must be an integer")


def _help_message() -> str:
    return (
        "Soy el almacenero de Qypu. Puedes escribir:\n"
        "- registrar producto arroz categoria alimentos stock 10\n"
        "- crear producto shampoo categoria cuidado personal precio 12.50 stock 5\n"
        "- stock arroz +3\n"
        "- stock arroz 20\n"
        "- cuanto stock tiene arroz\n"
        "- listar productos"
    )
