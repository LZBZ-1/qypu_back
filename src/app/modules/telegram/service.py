import re
from dataclasses import dataclass
from datetime import UTC, date, datetime
from decimal import Decimal, InvalidOperation
from typing import Any, Protocol, TypeGuard

from psycopg import AsyncConnection
from psycopg.rows import dict_row

from app.core.config import get_settings
from app.core.exceptions import DomainError
from app.modules.categories.exceptions import CategoryNotFoundError
from app.modules.categories.repository import CategoriesRepository
from app.modules.categories.service import CategoriesUseCase
from app.modules.channels.models import Channel
from app.modules.channels.repository import ChannelsRepository
from app.modules.channels.service import ConnectTelegramChannelUseCase
from app.modules.products.exceptions import (
    ProductBranchNotFoundError,
    ProductNotFoundError,
    ProductStockWouldBeNegativeError,
)
from app.modules.products.repository import ProductsRepository
from app.modules.products.service import ProductsUseCase
from app.modules.sales.models import Sale, SaleItemInput
from app.modules.sales.repository import SalesRepository
from app.modules.sales.service import SalesUseCase
from app.modules.telegram.models import PendingTelegramAction, SellerIntent, WarehouseIntent
from app.modules.telegram.orchestrator import TelegramOrchestrator, TelegramOrchestratorError
from app.modules.telegram.repository import TelegramPendingActionsRepository
from app.modules.telegram.sales_parser import TelegramSaleParser, TelegramSaleParserError
from app.modules.telegram.warehouse import CANCEL_WORDS, CONFIRM_WORDS, normalize_text

USE_EXISTING_CATEGORY_WORDS = {"usar", "usa", "existente", "usar existente"}
CREATE_CATEGORY_WORDS = {"crear", "crea", "registrar", "registrar nueva", "nueva"}
ONE_CATEGORY_WORDS = {"una sola", "como una", "una categoria", "juntas", "junto"}
MULTIPLE_CATEGORY_WORDS = {
    "separadas",
    "separados",
    "dos",
    "dos categorias",
    "distintas",
    "distintos",
    "por separado",
}


@dataclass(frozen=True)
class CategoryInterpretation:
    categories: list[str] | None = None
    ambiguous_options: dict[str, list[str]] | None = None


class SalePayloadParser(Protocol):
    async def parse(
        self,
        text: str,
        product_names: list[str] | None = None,
    ) -> dict[str, Any] | None:
        pass


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
        categories_use_case = CategoriesUseCase(CategoriesRepository(connection))
        products_use_case = ProductsUseCase(
            ProductsRepository(connection),
            categories_use_case,
        )
        sales_use_case = SalesUseCase(SalesRepository(connection))
        pending = await pending_repository.find_active(channel.id)
        normalized_text = normalize_text(text)

        if pending is not None:
            return await _handle_pending_action(
                channel=channel,
                pending=pending,
                text=normalized_text,
                original_text=text,
                pending_repository=pending_repository,
                products_use_case=products_use_case,
                categories_use_case=categories_use_case,
                sales_use_case=sales_use_case,
                sale_parser=TelegramSaleParser(),
                product_names=await _sale_product_names(products_use_case, channel),
            )

        try:
            intent = await TelegramOrchestrator().route(text)
        except TelegramOrchestratorError as exc:
            return str(exc)
        if intent is None:
            return _agent_selection_message()

        if intent.intent.action_type == "help":
            return _agent_help_message(intent.agent_type, channel.organization_name)

        if intent.agent_type == "seller":
            seller_intent = intent.intent
            if not isinstance(seller_intent, SellerIntent):
                return _agent_selection_message()
            missing_payload_message = _missing_payload_message(seller_intent)
            if missing_payload_message is not None:
                return missing_payload_message
            if seller_intent.action_type == "list_sales":
                return await _execute_seller_read_intent(
                    channel=channel,
                    intent=seller_intent,
                    sales_use_case=sales_use_case,
                )
            return await _start_create_sale_flow(
                channel=channel,
                intent=seller_intent,
                pending_repository=pending_repository,
                sale_parser=TelegramSaleParser(),
                products_use_case=products_use_case,
            )

        warehouse_intent = intent.intent
        if not isinstance(warehouse_intent, WarehouseIntent):
            return _agent_selection_message()

        if warehouse_intent.action_type == "create_category":
            return await _start_create_category_flow(
                channel=channel,
                intent=warehouse_intent,
                pending_repository=pending_repository,
            )

        missing_payload_message = _missing_payload_message(warehouse_intent)
        if missing_payload_message is not None:
            if _should_collect_create_product_name(warehouse_intent):
                await pending_repository.save(
                    channel_id=channel.id,
                    action_type="collect_create_product_name",
                    payload=warehouse_intent.payload,
                )
            if _should_collect_create_product_category(warehouse_intent):
                await pending_repository.save(
                    channel_id=channel.id,
                    action_type="collect_create_product_category",
                    payload=warehouse_intent.payload,
                )
            if _should_collect_create_category_name(warehouse_intent):
                await pending_repository.save(
                    channel_id=channel.id,
                    action_type="collect_create_category_name",
                    payload=warehouse_intent.payload,
                )
            return missing_payload_message

        if warehouse_intent.requires_confirmation:
            await pending_repository.save(
                channel_id=channel.id,
                action_type=warehouse_intent.action_type,
                payload=warehouse_intent.payload,
            )
            return _confirmation_message(warehouse_intent)

        return await _execute_read_intent(
            channel=channel,
            intent=warehouse_intent,
            products_use_case=products_use_case,
            categories_use_case=categories_use_case,
        )


async def _handle_pending_action(
    channel: Channel,
    pending: PendingTelegramAction,
    text: str,
    original_text: str,
    pending_repository: TelegramPendingActionsRepository,
    products_use_case: ProductsUseCase,
    categories_use_case: CategoriesUseCase,
    sales_use_case: SalesUseCase | None = None,
    sale_parser: SalePayloadParser | None = None,
    product_names: list[str] | None = None,
) -> str:
    if pending.action_type == "resolve_product_category":
        return await _handle_product_category_decision(
            channel=channel,
            pending=pending,
            text=text,
            pending_repository=pending_repository,
            products_use_case=products_use_case,
            categories_use_case=categories_use_case,
        )

    if pending.action_type == "collect_create_product_category":
        return await _handle_create_product_category_reply(
            channel=channel,
            pending=pending,
            text=text,
            pending_repository=pending_repository,
        )

    if pending.action_type == "collect_create_product_name":
        return await _handle_create_product_name_reply(
            channel=channel,
            pending=pending,
            text=text,
            pending_repository=pending_repository,
        )

    if pending.action_type == "collect_create_category_name":
        return await _handle_create_category_name_reply(
            channel=channel,
            text=original_text,
            pending_repository=pending_repository,
        )

    if pending.action_type == "resolve_create_category_ambiguity":
        return await _handle_create_category_ambiguity_reply(
            channel=channel,
            pending=pending,
            text=text,
            pending_repository=pending_repository,
        )

    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    if pending.action_type == "create_category" and text not in CONFIRM_WORDS:
        updated_payload = _update_pending_category_payload_from_reply(
            pending.payload,
            original_text,
        )
        if updated_payload is not None:
            await pending_repository.save(
                channel_id=channel.id,
                action_type="create_category",
                payload=updated_payload,
            )
            return _confirmation_message(
                WarehouseIntent("create_category", updated_payload, requires_confirmation=True)
            )

    if pending.action_type == "create_product" and text not in CONFIRM_WORDS:
        updated_payload = _update_pending_product_payload_from_reply(
            pending.payload,
            original_text,
        )
        if updated_payload is not None:
            await pending_repository.save(
                channel_id=channel.id,
                action_type="create_product",
                payload=updated_payload,
            )
            return _confirmation_message(
                WarehouseIntent("create_product", updated_payload, requires_confirmation=True)
            )

    if pending.action_type == "create_sale" and text not in CONFIRM_WORDS:
        updated_payload = await _sale_payload_from_text_with_parser(
            original_text,
            sale_parser,
            product_names,
        )
        if updated_payload is not None:
            await pending_repository.save(
                channel_id=channel.id,
                action_type="create_sale",
                payload=updated_payload,
            )
            return _confirmation_message(
                SellerIntent("create_sale", updated_payload, requires_confirmation=True)
            )

    if text not in CONFIRM_WORDS:
        return (
            "Hay una accion pendiente. Responde SI para guardar o NO para cancelar.\n\n"
            f"{_pending_summary(pending.action_type, pending.payload)}"
        )

    if pending.action_type == "create_product":
        category_resolution_message = await _ask_to_resolve_product_category_if_needed(
            channel=channel,
            pending=pending,
            pending_repository=pending_repository,
            categories_use_case=categories_use_case,
        )
        if category_resolution_message is not None:
            return category_resolution_message

    try:
        response = await _execute_write_action(
            channel=channel,
            action_type=pending.action_type,
            payload=pending.payload,
            products_use_case=products_use_case,
            categories_use_case=categories_use_case,
            sales_use_case=sales_use_case,
        )
    except DomainError as exc:
        await pending_repository.clear(channel.id)
        return _domain_error_message(exc)

    await pending_repository.clear(channel.id)
    return response


async def _handle_create_product_name_reply(
    channel: Channel,
    pending: PendingTelegramAction,
    text: str,
    pending_repository: TelegramPendingActionsRepository,
) -> str:
    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    payload = {**pending.payload, "product_name": text}
    if "category_name" in payload:
        await pending_repository.save(
            channel_id=channel.id,
            action_type="create_product",
            payload=payload,
        )
        return _confirmation_message(
            WarehouseIntent("create_product", payload, requires_confirmation=True)
        )

    await pending_repository.save(
        channel_id=channel.id,
        action_type="collect_create_product_category",
        payload=payload,
    )
    return _create_product_category_prompt(text)


async def _handle_create_product_category_reply(
    channel: Channel,
    pending: PendingTelegramAction,
    text: str,
    pending_repository: TelegramPendingActionsRepository,
) -> str:
    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    payload = {**pending.payload, "category_name": text}
    await pending_repository.save(
        channel_id=channel.id,
        action_type="create_product",
        payload=payload,
    )
    return _confirmation_message(
        WarehouseIntent("create_product", payload, requires_confirmation=True)
    )


async def _handle_create_category_name_reply(
    channel: Channel,
    text: str,
    pending_repository: TelegramPendingActionsRepository,
) -> str:
    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    interpretation = _interpret_category_names(text)
    if interpretation.ambiguous_options is not None:
        payload = _category_ambiguity_payload(interpretation.ambiguous_options)
        await pending_repository.save(
            channel_id=channel.id,
            action_type="resolve_create_category_ambiguity",
            payload=payload,
        )
        return _category_ambiguity_message(interpretation.ambiguous_options)

    payload = _create_category_payload(interpretation.categories or [text])
    await pending_repository.save(
        channel_id=channel.id,
        action_type="create_category",
        payload=payload,
    )
    return _confirmation_message(
        WarehouseIntent("create_category", payload, requires_confirmation=True)
    )


async def _start_create_category_flow(
    channel: Channel,
    intent: WarehouseIntent,
    pending_repository: TelegramPendingActionsRepository,
) -> str:
    requested_text = _category_request_text(intent.payload)
    if not requested_text:
        await pending_repository.save(
            channel_id=channel.id,
            action_type="collect_create_category_name",
            payload=intent.payload,
        )
        return "Para registrar una categoria necesito el nombre."

    interpretation = _interpret_category_names(requested_text)
    if interpretation.ambiguous_options is not None:
        payload = _category_ambiguity_payload(interpretation.ambiguous_options)
        await pending_repository.save(
            channel_id=channel.id,
            action_type="resolve_create_category_ambiguity",
            payload=payload,
        )
        return _category_ambiguity_message(interpretation.ambiguous_options)

    payload = _create_category_payload(interpretation.categories or [requested_text])
    await pending_repository.save(
        channel_id=channel.id,
        action_type="create_category",
        payload=payload,
    )
    return _confirmation_message(
        WarehouseIntent("create_category", payload, requires_confirmation=True)
    )


async def _handle_create_category_ambiguity_reply(
    channel: Channel,
    pending: PendingTelegramAction,
    text: str,
    pending_repository: TelegramPendingActionsRepository,
) -> str:
    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    options = pending.payload.get("opciones")
    if not isinstance(options, dict):
        await pending_repository.clear(channel.id)
        return "No pude resolver la confirmacion pendiente. Vuelve a intentarlo."

    one_category = options.get("una_categoria")
    multiple_categories = options.get("varias_categorias")
    if not _is_string_list(one_category) or not _is_string_list(multiple_categories):
        await pending_repository.clear(channel.id)
        return "No pude resolver la confirmacion pendiente. Vuelve a intentarlo."

    if text in ONE_CATEGORY_WORDS:
        payload = _create_category_payload(one_category)
    elif text in MULTIPLE_CATEGORY_WORDS:
        payload = _create_category_payload(multiple_categories)
    else:
        return _category_ambiguity_message(
            {
                "una_categoria": one_category,
                "varias_categorias": multiple_categories,
            }
        )

    await pending_repository.save(
        channel_id=channel.id,
        action_type="create_category",
        payload=payload,
    )
    return _confirmation_message(
        WarehouseIntent("create_category", payload, requires_confirmation=True)
    )


async def _ask_to_resolve_product_category_if_needed(
    channel: Channel,
    pending: PendingTelegramAction,
    pending_repository: TelegramPendingActionsRepository,
    categories_use_case: CategoriesUseCase,
) -> str | None:
    category_name = str(pending.payload["category_name"])
    category = await categories_use_case.find_category_by_name(
        channel.organization_id,
        category_name,
    )
    if category is not None:
        pending.payload["category_name"] = category.name
        return None

    similar_category = await categories_use_case.find_similar_category(
        channel.organization_id,
        category_name,
    )
    decision_payload = {
        **pending.payload,
        "requested_category_name": category_name,
    }
    if similar_category is not None:
        decision_payload["suggested_category_name"] = similar_category.name

    await pending_repository.save(
        channel_id=channel.id,
        action_type="resolve_product_category",
        payload=decision_payload,
    )

    if similar_category is not None:
        return (
            f"No encontre la categoria {category_name}, pero encontre una similar: "
            f"{similar_category.name}.\n\n"
            f"Responde USAR para usar {similar_category.name}, CREAR para registrar "
            f"{category_name}, o NO para cancelar."
        )

    return (
        f"No encontre la categoria {category_name}.\n\n"
        f"Responde SI para generar la categoria {category_name} y continuar con el producto, "
        "o NO para cancelar."
    )


async def _handle_product_category_decision(
    channel: Channel,
    pending: PendingTelegramAction,
    text: str,
    pending_repository: TelegramPendingActionsRepository,
    products_use_case: ProductsUseCase,
    categories_use_case: CategoriesUseCase,
) -> str:
    if text in CANCEL_WORDS:
        await pending_repository.clear(channel.id)
        return "Listo, cancele la accion pendiente."

    requested_category_name = str(pending.payload["requested_category_name"])
    suggested_category_name = pending.payload.get("suggested_category_name")

    if text in USE_EXISTING_CATEGORY_WORDS and isinstance(suggested_category_name, str):
        payload = _product_payload_with_category(pending.payload, suggested_category_name)
        response = await _execute_write_action(
            channel=channel,
            action_type="create_product",
            payload=payload,
            products_use_case=products_use_case,
            categories_use_case=categories_use_case,
        )
        await pending_repository.clear(channel.id)
        return response

    if text in CREATE_CATEGORY_WORDS or text in CONFIRM_WORDS:
        payload = _product_payload_with_category(pending.payload, requested_category_name)
        response = await _execute_write_action(
            channel=channel,
            action_type="create_product_with_new_category",
            payload=payload,
            products_use_case=products_use_case,
            categories_use_case=categories_use_case,
        )
        await pending_repository.clear(channel.id)
        return response

    if isinstance(suggested_category_name, str):
        return (
            f"Responde USAR para usar {suggested_category_name}, CREAR para registrar "
            f"{requested_category_name}, o NO para cancelar."
        )

    return (
        f"Responde SI para generar la categoria {requested_category_name} "
        "y continuar con el producto, "
        "o NO para cancelar."
    )


async def _execute_read_intent(
    channel: Channel,
    intent: WarehouseIntent,
    products_use_case: ProductsUseCase,
    categories_use_case: CategoriesUseCase,
) -> str:
    if intent.action_type == "list_products":
        products = await products_use_case.list_products(channel.organization_id)
        if not products:
            return "Todavia no hay productos registrados."

        return _products_list_message("Productos registrados:", products)

    if intent.action_type == "list_products_by_category":
        try:
            products = await products_use_case.list_products_by_category(
                organization_id=channel.organization_id,
                category_name=str(intent.payload["category_name"]),
            )
        except CategoryNotFoundError:
            return "No encontre esa categoria. Revisa el nombre e intentalo de nuevo."

        if not products:
            return f"No hay productos registrados en {intent.payload['category_name']}."

        return _products_list_message(
            f"Productos en {intent.payload['category_name']}:",
            products,
        )

    if intent.action_type == "list_categories":
        categories = await categories_use_case.list_categories(channel.organization_id)
        if not categories:
            return "Todavia no hay categorias registradas."

        lines = ["Categorias registradas:"]
        for category in categories:
            lines.append(f"- {category.name}")
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

    return _help_message(channel.organization_name)


def _execute_seller_intent(intent: SellerIntent, organization_name: str | None) -> str:
    if intent.action_type == "create_sale":
        company_name = _company_name(organization_name)
        return (
            f"Llamaste al vendedor de {company_name}.\n\n"
            "Todavia no tengo habilitado el registro de ventas por Telegram. "
            "Por ahora puedo identificar que esta solicitud corresponde al vendedor."
        )

    return _seller_help_message(organization_name)


async def _execute_seller_read_intent(
    channel: Channel,
    intent: SellerIntent,
    sales_use_case: SalesUseCase,
) -> str:
    if intent.action_type != "list_sales":
        return _seller_help_message(channel.organization_name)

    query = _sale_query_from_text(str(intent.payload.get("text", "")))
    if query is None:
        return _list_sales_filter_prompt()

    if query["type"] == "date":
        sales = await sales_use_case.list_sales_by_date(
            organization_id=channel.organization_id,
            issue_date=query["date"],
        )
        title = f"Ventas del {query['date'].isoformat()}:"
    else:
        sales = await sales_use_case.list_sales_by_product(
            organization_id=channel.organization_id,
            product_name=str(query["product_name"]),
        )
        title = f"Ventas con {query['product_name']}:"

    if not sales:
        return "No encontre ventas para ese filtro."
    return _sales_list_message(title, sales)


async def _start_create_sale_flow(
    channel: Channel,
    intent: SellerIntent,
    pending_repository: TelegramPendingActionsRepository,
    sale_parser: SalePayloadParser | None = None,
    products_use_case: ProductsUseCase | None = None,
) -> str:
    sale_text = str(intent.payload.get("text", "")).strip()
    payload = await _sale_payload_from_text_with_parser(
        sale_text,
        sale_parser,
        await _sale_product_names(products_use_case, channel),
    )
    if payload is None:
        return _create_sale_format_prompt()

    await pending_repository.save(
        channel_id=channel.id,
        action_type="create_sale",
        payload=payload,
    )
    return _confirmation_message(
        SellerIntent("create_sale", payload, requires_confirmation=True)
    )


def _missing_payload_message(intent: SellerIntent | WarehouseIntent) -> str | None:
    if intent.action_type == "create_sale":
        if "text" not in intent.payload and "items" not in intent.payload:
            return _create_sale_format_prompt()
        return None

    if intent.action_type == "list_sales":
        if "text" not in intent.payload and "product_name" not in intent.payload:
            return _list_sales_filter_prompt()
        return None

    if intent.action_type == "create_product":
        if "product_name" not in intent.payload:
            return _create_product_name_prompt()
        if "category_name" not in intent.payload:
            return _create_product_category_prompt(str(intent.payload["product_name"]))
        return None

    if intent.action_type == "create_category":
        if "category_name" not in intent.payload:
            return "Para registrar una categoria necesito el nombre."
        return None

    if intent.action_type == "list_products_by_category":
        if "category_name" not in intent.payload:
            return "Para buscar productos por categoria necesito el nombre de la categoria."
        return None

    if intent.action_type == "get_stock" and "product_name" not in intent.payload:
        return "Para consultar stock necesito el nombre del producto."

    if intent.action_type == "set_stock":
        if "product_name" not in intent.payload:
            return "Para fijar el stock necesito el nombre del producto."
        if "quantity" not in intent.payload:
            return "Para fijar el stock necesito la cantidad final."
        return None

    if intent.action_type == "increment_stock":
        if "product_name" not in intent.payload:
            return "Para mover el stock necesito el nombre del producto."
        if "delta" not in intent.payload:
            return "Para mover el stock necesito indicar cuanto sube o baja."
        return None

    if intent.action_type == "rename_product":
        if "product_name" not in intent.payload:
            return "Para editar un producto necesito el nombre actual."
        if "new_name" not in intent.payload:
            return "Para editar un producto necesito el nuevo nombre."
        return None

    if intent.action_type == "rename_category":
        if "category_name" not in intent.payload:
            return "Para editar una categoria necesito el nombre actual."
        if "new_name" not in intent.payload:
            return "Para editar una categoria necesito el nuevo nombre."
        return None

    return None


def _should_collect_create_product_name(intent: WarehouseIntent) -> bool:
    return intent.action_type == "create_product" and "product_name" not in intent.payload


def _should_collect_create_product_category(intent: WarehouseIntent) -> bool:
    return (
        intent.action_type == "create_product"
        and "product_name" in intent.payload
        and "category_name" not in intent.payload
    )


def _should_collect_create_category_name(intent: WarehouseIntent) -> bool:
    return intent.action_type == "create_category" and "category_name" not in intent.payload


async def _execute_write_action(
    channel: Channel,
    action_type: str,
    payload: dict[str, Any],
    products_use_case: ProductsUseCase,
    categories_use_case: CategoriesUseCase,
    sales_use_case: SalesUseCase | None = None,
) -> str:
    if action_type == "create_sale":
        if sales_use_case is None:
            return "No pude completar la venta. Intentalo nuevamente."
        sale_items = _sale_items_from_payload(payload)
        sale = await sales_use_case.create_sale(
            organization_id=channel.organization_id,
            items=sale_items,
            client_name=_sale_client_name_from_payload(payload),
        )
        client_text = f" Cliente: {sale.client_name}." if sale.client_name else ""
        return f"Venta registrada por S/ {_format_money(sale.total_amount)}.{client_text}"

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

    if action_type == "create_category":
        category_names = _payload_category_names(payload)
        categories = [
            await categories_use_case.create_category(
                organization_id=channel.organization_id,
                name=category_name,
            )
            for category_name in category_names
        ]
        if len(categories) == 1:
            return f"Categoria registrada: {categories[0].name}."
        return "Categorias registradas:\n" + "\n".join(
            f"- {category.name}" for category in categories
        )

    if action_type == "create_product_with_new_category":
        category = await categories_use_case.create_category(
            organization_id=channel.organization_id,
            name=str(payload["category_name"]),
        )
        product, stock = await products_use_case.create_product(
            organization_id=channel.organization_id,
            name=str(payload["product_name"]),
            category_name=category.name,
            unit_price=_payload_decimal(payload.get("unit_price")),
            initial_stock=_payload_int(payload.get("initial_stock")),
        )
        stock_text = f" Stock inicial: {stock.quantity}." if stock is not None else ""
        price_text = f" Precio: S/ {product.unit_price}." if product.unit_price is not None else ""
        return (
            f"Categoria y producto registrados: {category.name} / {product.name}."
            f"{price_text}{stock_text}"
        )

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

    if action_type == "rename_category":
        category = await categories_use_case.rename_category(
            organization_id=channel.organization_id,
            category_name=str(payload["category_name"]),
            new_name=str(payload["new_name"]),
        )
        return f"Categoria actualizada: ahora se llama {category.name}."

    return _help_message(channel.organization_name)


def _confirmation_message(intent: SellerIntent | WarehouseIntent) -> str:
    return (
        f"{_pending_summary(intent.action_type, intent.payload)}\n\n"
        "Responde SI para guardar o NO para cancelar."
    )


def _pending_summary(action_type: str, payload: dict[str, Any]) -> str:
    if action_type == "create_sale":
        items = _sale_items_from_payload(payload)
        lines = ["Voy a registrar esta venta:"]
        client_name = _sale_client_name_from_payload(payload)
        if client_name is not None:
            lines.append(f"Cliente: {client_name}")
        has_catalog_price = False
        for item in items:
            if item.unit_price is None:
                has_catalog_price = True
                lines.append(
                    f"- {item.quantity} x {item.product_name} "
                    "con precio del catalogo"
                )
                continue
            subtotal = item.unit_price * item.quantity
            lines.append(
                f"- {item.quantity} x {item.product_name} "
                f"a S/ {_format_money(item.unit_price)} = S/ {_format_money(subtotal)}"
            )
        if has_catalog_price:
            lines.append("Total: se calculara con el precio del catalogo al guardar.")
        else:
            lines.append(f"Total: S/ {_format_money(_sale_total(items))}")
        return "\n".join(lines)

    if action_type == "create_product":
        price = f"\nPrecio: S/ {payload['unit_price']}" if "unit_price" in payload else ""
        stock = f"\nStock inicial: {payload['initial_stock']}" if "initial_stock" in payload else ""
        return (
            "Voy a registrar este producto:\n"
            f"Producto: {payload['product_name']}\n"
            f"Categoria: {payload['category_name']}"
            f"{price}{stock}"
        )

    if action_type == "create_category":
        category_names = _payload_category_names(payload)
        if len(category_names) > 1:
            lines = ["Voy a registrar estas categorias:"]
            lines.extend(f"- {category_name}" for category_name in category_names)
            return "\n".join(lines)
        return (
            "Voy a registrar esta categoria:\n"
            f"Categoria: {payload['category_name']}"
        )

    if action_type == "create_product_with_new_category":
        price = f"\nPrecio: S/ {payload['unit_price']}" if "unit_price" in payload else ""
        stock = f"\nStock inicial: {payload['initial_stock']}" if "initial_stock" in payload else ""
        return (
            "Voy a registrar esta categoria y producto:\n"
            f"Categoria: {payload['category_name']}\n"
            f"Producto: {payload['product_name']}"
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

    if action_type == "rename_category":
        return (
            "Voy a editar esta categoria:\n"
            f"Categoria actual: {payload['category_name']}\n"
            f"Nuevo nombre: {payload['new_name']}"
        )

    return "Voy a ejecutar una accion de almacen."


def _domain_error_message(exc: DomainError) -> str:
    if isinstance(exc, CategoryNotFoundError):
        return "No encontre esa categoria. Revisa el nombre e intentalo de nuevo."
    if isinstance(exc, ProductBranchNotFoundError):
        return "No encontre una sucursal para guardar el stock."
    if isinstance(exc, ProductNotFoundError):
        return "No encontre ese producto. Prueba con el nombre completo."
    if isinstance(exc, ProductStockWouldBeNegativeError):
        return "No puedo dejar el stock en negativo."
    return "No pude completar la accion. Intentalo nuevamente."


def _sale_query_from_text(text: str) -> dict[str, Any] | None:
    normalized = normalize_text(text)
    query_date = _extract_sales_query_date(normalized)
    if query_date is not None:
        return {"type": "date", "date": query_date}

    product_name = _extract_sales_query_product(normalized)
    if product_name is not None:
        return {"type": "product", "product_name": product_name}
    return None


def _extract_sales_query_date(text: str) -> date | None:
    if re.search(r"\b(?:hoy|del dia|de hoy)\b", text):
        return datetime.now(UTC).date()

    match = re.search(r"\b(\d{4}-\d{2}-\d{2})\b", text)
    if match:
        try:
            return date.fromisoformat(match.group(1))
        except ValueError:
            return None

    match = re.search(r"\b(\d{1,2})[/-](\d{1,2})[/-](\d{4})\b", text)
    if match:
        day, month, year = (int(match.group(1)), int(match.group(2)), int(match.group(3)))
        try:
            return date(year, month, day)
        except ValueError:
            return None

    return None


def _extract_sales_query_product(text: str) -> str | None:
    patterns = [
        r"ventas?\s+(?:del\s+|de\s+)?producto\s+(.+)$",
        r"ventas?\s+(?:con|de)\s+(.+)$",
        r"historial\s+(?:del\s+|de\s+)?producto\s+(.+)$",
    ]
    for pattern in patterns:
        match = re.search(pattern, text)
        if not match:
            continue
        product_name = match.group(1).strip()
        if product_name and product_name not in {"hoy", "ayer"}:
            return product_name
    return None


def _sales_list_message(title: str, sales: list[Sale]) -> str:
    lines = [title]
    for sale in sales:
        client = f" - {sale.client_name}" if sale.client_name else ""
        lines.append(
            f"- {sale.issue_date.isoformat()}{client}: S/ {_format_money(sale.total_amount)}"
        )
        for detail in sale.details:
            lines.append(
                f"  {detail.quantity} x {detail.product_name} "
                f"a S/ {_format_money(detail.unit_price)}"
            )
    return "\n".join(lines)


def _list_sales_filter_prompt() -> str:
    return (
        "Para consultar ventas dime una fecha o producto.\n"
        "Ejemplos: ventas de hoy, ventas del 2026-07-02, ventas de arroz"
    )


async def _sale_payload_from_text_with_parser(
    text: str,
    sale_parser: SalePayloadParser | None,
    product_names: list[str] | None = None,
) -> dict[str, Any] | None:
    if sale_parser is None:
        return _sale_payload_from_text(text)

    try:
        payload = await sale_parser.parse(text, product_names)
    except TelegramSaleParserError:
        return _sale_payload_from_text(text)

    return payload if payload is not None else _sale_payload_from_text(text)


async def _sale_product_names(
    products_use_case: ProductsUseCase | None,
    channel: Channel,
) -> list[str] | None:
    if products_use_case is None:
        return None

    try:
        products = await products_use_case.list_products(channel.organization_id)
    except DomainError:
        return None
    return [product.name for product in products]


def _sale_payload_from_text(text: str) -> dict[str, Any] | None:
    sale_text, client_name = _extract_sale_client(text)
    sale_items = _parse_sale_items(sale_text)
    if not sale_items:
        return None
    payload: dict[str, Any] = {
        "items": [
            _sale_item_payload(item)
            for item in sale_items
        ]
    }
    if client_name is not None:
        payload["client_name"] = client_name
    return payload


def _sale_item_payload(item: SaleItemInput) -> dict[str, Any]:
    payload: dict[str, Any] = {
        "product_name": item.product_name,
        "quantity": item.quantity,
    }
    if item.unit_price is not None:
        payload["unit_price"] = str(item.unit_price)
    return payload


def _extract_sale_client(text: str) -> tuple[str, str | None]:
    sale_text = _strip_sale_intro(text)
    patterns = [
        r"^(?:a|para)\s+cliente\s+(?P<client>.+?)\s*:\s*(?P<items>.+)$",
        r"^cliente\s+(?P<client>.+?)\s*:\s*(?P<items>.+)$",
        r"^(?:a|para)\s+cliente\s+(?P<client>.+?)\s+(?P<items>\d+\s+.+)$",
        r"^cliente\s+(?P<client>.+?)\s+(?P<items>\d+\s+.+)$",
        r"^(?P<items>.+?)\s+(?:para\s+cliente|cliente)\s+(?P<client>.+)$",
    ]
    for pattern in patterns:
        match = re.match(pattern, sale_text, flags=re.IGNORECASE | re.DOTALL)
        if match is None:
            continue
        client_name = _strip_matching_quotes(match.group("client").strip(" .,:;"))
        item_text = match.group("items").strip(" .,:;")
        if client_name and item_text:
            return item_text, client_name
    return text, None


def _parse_sale_items(text: str) -> list[SaleItemInput]:
    normalized = normalize_text(_strip_sale_intro(text))
    parts = _split_sale_parts(normalized)
    items: list[SaleItemInput] = []
    for part in parts:
        item = _parse_sale_item(part)
        if item is not None:
            items.append(item)
    return items


def _strip_sale_intro(text: str) -> str:
    stripped = re.sub(
        r"^\s*(?:hola\s+)?(?:he\s+)?(?:vendido|vendi|vender|venta|pedido|"
        r"registra(?:r)?|crear|anota(?:r)?|guarda(?:r)?)\s*"
        r"(?:venta|pedido)?\s*(?:de)?\s*",
        "",
        text.strip(),
        flags=re.IGNORECASE,
    ).strip()
    stripped = re.sub(r"^una\s+(?:venta|pedido)\s+(?:de\s+)?", "", stripped, flags=re.IGNORECASE)
    return re.sub(r"^(?:he\s+)?vendido\s+", "", stripped, flags=re.IGNORECASE).strip()


def _split_sale_parts(text: str) -> list[str]:
    pieces = re.split(r"\s*(?:,|;|\s+y\s+)\s*", text)
    return [piece.strip() for piece in pieces if piece.strip()]


def _parse_sale_item(text: str) -> SaleItemInput | None:
    priced_match = re.match(
        r"^(?P<quantity>\d+)\s+(?P<product>.+?)\s+"
        r"(?:a|por|precio|precio\s+de)\s+(?:s/\s*)?"
        r"(?P<unit_price>\d+(?:\.\d{1,2})?)$",
        text,
        flags=re.IGNORECASE,
    )
    if priced_match is not None:
        quantity = int(priced_match.group("quantity"))
        if quantity <= 0:
            return None

        try:
            unit_price = Decimal(priced_match.group("unit_price"))
        except InvalidOperation:
            return None

        return SaleItemInput(
            product_name=_clean_sale_product_name(priced_match.group("product")),
            quantity=quantity,
            unit_price=unit_price,
        )

    unpriced_match = re.match(
        r"^(?P<quantity>\d+|un|una|uno)\s+(?P<product>.+)$",
        text,
        flags=re.IGNORECASE,
    )
    if unpriced_match is None:
        return None

    quantity = _sale_quantity_from_text(unpriced_match.group("quantity"))
    if quantity <= 0:
        return None

    return SaleItemInput(
        product_name=_clean_sale_product_name(unpriced_match.group("product")),
        quantity=quantity,
    )


def _sale_quantity_from_text(text: str) -> int:
    if text in {"un", "una", "uno"}:
        return 1
    return int(text)


def _clean_sale_product_name(text: str) -> str:
    cleaned = re.sub(r"\bde\s+(\d)", r"\1", text.strip())
    return re.sub(r"\s+", " ", cleaned).strip()


def _sale_items_from_payload(payload: dict[str, Any]) -> list[SaleItemInput]:
    raw_items = payload.get("items")
    if not isinstance(raw_items, list):
        return []

    sale_items: list[SaleItemInput] = []
    for raw_item in raw_items:
        if not isinstance(raw_item, dict):
            continue
        product_name = raw_item.get("product_name")
        quantity = raw_item.get("quantity")
        unit_price = raw_item.get("unit_price")
        if not isinstance(product_name, str):
            continue
        if not isinstance(quantity, int | str):
            continue
        sale_items.append(
            SaleItemInput(
                product_name=product_name,
                quantity=int(quantity),
                unit_price=Decimal(str(unit_price)) if unit_price is not None else None,
            )
        )
    return sale_items


def _sale_client_name_from_payload(payload: dict[str, Any]) -> str | None:
    client_name = payload.get("client_name")
    if isinstance(client_name, str) and client_name.strip():
        return client_name.strip()
    return None


def _sale_total(items: list[SaleItemInput]) -> Decimal:
    total = Decimal("0")
    for item in items:
        if item.unit_price is None:
            continue
        total += item.unit_price * item.quantity
    return total


def _format_money(value: Decimal) -> str:
    return str(value.quantize(Decimal("0.01")))


def _create_sale_format_prompt() -> str:
    return (
        "Para registrar una venta necesito producto y cantidad.\n"
        "Ejemplos: he vendido 1 inka cola de 3 litros, o "
        "registrar venta cliente Juan Perez: 2 arroz a 3.50"
    )


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


def _product_payload_with_category(
    payload: dict[str, Any],
    category_name: str,
) -> dict[str, Any]:
    return {
        key: value
        for key, value in {
            **payload,
            "category_name": category_name,
        }.items()
        if key in {"product_name", "category_name", "unit_price", "initial_stock"}
    }


def _update_pending_product_payload_from_reply(
    payload: dict[str, Any],
    reply: str,
) -> dict[str, Any] | None:
    updated_payload = dict(payload)
    product_name = _extract_product_name_correction(reply)
    category_name = _extract_product_category_correction(reply)
    stock_value = _extract_product_stock_correction(reply)
    price_value = _extract_product_price_correction(reply)

    if product_name is not None:
        updated_payload["product_name"] = product_name
    if category_name is not None:
        updated_payload["category_name"] = category_name
    if stock_value is not None:
        updated_payload["initial_stock"] = stock_value
    if price_value is not None:
        updated_payload["unit_price"] = str(price_value)

    return updated_payload if updated_payload != payload else None


def _extract_product_name_correction(text: str) -> str | None:
    patterns = [
        r"(?:^|\b)(?:q|que)\s+(?:el\s+)?nombre\s+(?:sea|debe\s+ser|es)\s+(.+)$",
        r"(?:^|\b)(?:cambia|corrige|actualiza)\s+(?:el\s+)?nombre\s+(?:a|por)?\s*(.+)$",
    ]
    return _extract_clean_text_value(text, patterns)


def _extract_product_category_correction(text: str) -> str | None:
    patterns = [
        r"(?:^|\b)(?:q|que)\s+(?:la\s+)?categor[ií]a\s+(?:sea|debe\s+ser|es)\s+(.+)$",
        r"(?:^|\b)(?:cambia|corrige|actualiza)\s+(?:la\s+)?categor[ií]a\s+(?:a|por)?\s*(.+)$",
        r"(?:^|\b)(?:entrara|entra|va)\s+en\s+(?:la\s+)?categor[ií]a\s+(.+)$",
    ]
    return _extract_clean_text_value(text, patterns)


def _extract_product_stock_correction(text: str) -> int | None:
    patterns = [
        r"(?:^|\b)(?:q|que)\s+(?:el\s+)?stock\s+(?:sea|debe\s+ser|es)\s+([+-]?\d+)\b",
        r"(?:^|\b)(?:cambia|corrige|actualiza)\s+(?:el\s+)?stock\s+(?:a|por)?\s*([+-]?\d+)\b",
        r"(?:^|\b)(?:stock|stock\s+inicial)\s+(?:de\s+)?([+-]?\d+)\b",
    ]
    for pattern in patterns:
        match = re.search(pattern, text, flags=re.IGNORECASE)
        if match:
            return int(match.group(1))
    return None


def _extract_product_price_correction(text: str) -> Decimal | None:
    patterns = [
        r"(?:^|\b)(?:q|que)\s+(?:el\s+)?precio\s+(?:sea|debe\s+ser|es)\s+(\d+(?:\.\d{1,2})?)\b",
        r"(?:^|\b)(?:cambia|corrige|actualiza)\s+(?:el\s+)?precio\s+(?:a|por)?\s*(\d+(?:\.\d{1,2})?)\b",
        r"(?:^|\b)precio\s+(?:de\s+)?(\d+(?:\.\d{1,2})?)\b",
    ]
    for pattern in patterns:
        match = re.search(pattern, text, flags=re.IGNORECASE)
        if match:
            try:
                return Decimal(match.group(1))
            except InvalidOperation:
                return None
    return None


def _extract_clean_text_value(text: str, patterns: list[str]) -> str | None:
    for pattern in patterns:
        match = re.search(pattern, text.strip(), flags=re.IGNORECASE)
        if match:
            value = _strip_matching_quotes(match.group(1).strip(" ."))
            return value or None
    return None


def _category_request_text(payload: dict[str, Any]) -> str | None:
    text = payload.get("text")
    if isinstance(text, str):
        extracted = _extract_category_text_from_request(text)
        if extracted:
            return extracted

    category_name = payload.get("category_name")
    if isinstance(category_name, str) and category_name.strip():
        return category_name.strip()
    return None


def _extract_category_text_from_request(text: str) -> str | None:
    patterns = [
        r"(?:crear|registrar)\s+(?:la\s+|las\s+)?categor[ií]as?\s+(.+)$",
        r"categor[ií]as?\s+(?:llamada|llamadas|con nombre)\s+(.+)$",
    ]
    for pattern in patterns:
        match = re.search(pattern, text, flags=re.IGNORECASE)
        if match:
            value = match.group(1).strip()
            return _strip_leading_category_noise(value) or None
    return None


def _strip_leading_category_noise(text: str) -> str:
    value = re.sub(
        r"^(?:llamada|llamadas|llamado|llamados|con nombre)\s+",
        "",
        text.strip(),
        flags=re.IGNORECASE,
    )
    value = re.sub(
        r"^(?:quiero\s+|necesito\s+|deseo\s+)?(?:crear|registrar)\s+",
        "",
        value,
        flags=re.IGNORECASE,
    )
    return value.strip()


def _interpret_category_names(text: str) -> CategoryInterpretation:
    cleaned_text = _strip_leading_category_noise(text)
    cleaned_text = _apply_single_category_clarifications(cleaned_text)
    single_category_text = _single_category_request_text(cleaned_text)
    if single_category_text is not None:
        return CategoryInterpretation(categories=[single_category_text])

    comma_parts = _split_outside_quotes(cleaned_text, ",")
    has_comma_list = len(comma_parts) > 1

    if has_comma_list:
        categories: list[str] = []
        for part in comma_parts:
            categories.extend(_split_clear_list_part(part))
        return CategoryInterpretation(categories=_clean_category_list(categories))

    if _is_wrapped_in_quotes(cleaned_text):
        return CategoryInterpretation(categories=[_strip_matching_quotes(cleaned_text)])

    conjunction_parts = _split_on_unquoted_y(cleaned_text)
    if len(conjunction_parts) > 1:
        categories = _clean_category_list(conjunction_parts)
        return CategoryInterpretation(
            ambiguous_options={
                "una_categoria": [cleaned_text.strip()],
                "varias_categorias": categories,
            }
        )

    return CategoryInterpretation(categories=_clean_category_list([cleaned_text]))


def _split_clear_list_part(text: str) -> list[str]:
    if _is_wrapped_in_quotes(text):
        return [_strip_matching_quotes(text)]
    return _split_on_unquoted_y(text)


def _single_category_request_text(text: str) -> str | None:
    match = re.fullmatch(
        r"(.+?)\s+en\s+una\s+sola\s+categor[ií]a\.?",
        text.strip(),
        flags=re.IGNORECASE | re.DOTALL,
    )
    if match:
        return match.group(1).strip(" .")
    return None


def _apply_single_category_clarifications(text: str) -> str:
    clarified_text = text.strip()
    pattern = re.compile(
        r"\bpero\s+(.+?)\s+en\s+una\s+sola\s+categor[ií]a\b\.?",
        flags=re.IGNORECASE | re.DOTALL,
    )

    for match in pattern.finditer(text):
        phrase = match.group(1).strip(" .")
        if not phrase:
            continue
        quoted_phrase = f'"{phrase}"'
        clarified_text = clarified_text.replace(match.group(0), "")
        clarified_text = re.sub(
            rf"(?<![\"'])\b{re.escape(phrase)}\b(?![\"'])",
            quoted_phrase,
            clarified_text,
            count=1,
            flags=re.IGNORECASE,
        )

    return re.sub(r"\s+", " ", clarified_text).strip(" .")


def _split_outside_quotes(text: str, delimiter: str) -> list[str]:
    parts: list[str] = []
    start = 0
    quote_char: str | None = None
    for index, char in enumerate(text):
        if char in {'"', "'"}:
            quote_char = None if quote_char == char else char
            continue
        if char == delimiter and quote_char is None:
            parts.append(text[start:index])
            start = index + 1
    parts.append(text[start:])
    return parts


def _split_on_unquoted_y(text: str) -> list[str]:
    parts: list[str] = []
    current: list[str] = []
    quote_char: str | None = None
    index = 0
    while index < len(text):
        char = text[index]
        if char in {'"', "'"}:
            quote_char = None if quote_char == char else char
            current.append(char)
            index += 1
            continue

        if (
            quote_char is None
            and char.lower() == "y"
            and (index == 0 or text[index - 1].isspace())
            and (index == len(text) - 1 or text[index + 1].isspace())
        ):
            parts.append("".join(current))
            current = []
            index += 1
            continue

        current.append(char)
        index += 1

    parts.append("".join(current))
    return parts


def _is_wrapped_in_quotes(text: str) -> bool:
    stripped = text.strip()
    return (
        len(stripped) >= 2
        and stripped[0] in {'"', "'"}
        and stripped[-1] == stripped[0]
    )


def _strip_matching_quotes(text: str) -> str:
    stripped = text.strip()
    if _is_wrapped_in_quotes(stripped):
        return stripped[1:-1].strip()
    return stripped


def _clean_category_list(categories: list[str]) -> list[str]:
    return [
        cleaned
        for category in categories
        if (cleaned := _strip_matching_quotes(category).strip())
    ]


def _create_category_payload(category_names: list[str]) -> dict[str, Any]:
    if len(category_names) == 1:
        return {"category_name": category_names[0]}
    return {"category_names": category_names}


def _update_pending_category_payload_from_reply(
    payload: dict[str, Any],
    reply: str,
) -> dict[str, Any] | None:
    current_categories = _payload_category_names(payload)
    reply_text = re.sub(
        r"^\s*pero\s+",
        "",
        _strip_leading_category_noise(reply),
        flags=re.IGNORECASE,
    )
    single_category = _single_category_request_text(reply_text)
    if single_category is None:
        return None

    merged_categories = _merge_consecutive_categories(
        current_categories,
        single_category,
    )
    if merged_categories == current_categories:
        return None
    return _create_category_payload(merged_categories)


def _merge_consecutive_categories(
    categories: list[str],
    single_category: str,
) -> list[str]:
    target = normalize_text(single_category)
    for start in range(len(categories)):
        for end in range(start + 2, len(categories) + 1):
            candidate = " y ".join(categories[start:end])
            if normalize_text(candidate) == target:
                return [
                    *categories[:start],
                    single_category,
                    *categories[end:],
                ]
    return categories


def _payload_category_names(payload: dict[str, Any]) -> list[str]:
    category_names = payload.get("category_names")
    if _is_string_list(category_names):
        return category_names
    return [str(payload["category_name"])]


def _category_ambiguity_payload(options: dict[str, list[str]]) -> dict[str, Any]:
    return {
        "intencion": "crear_categoria",
        "estado": "esperando_confirmacion_categoria_ambigua",
        "opciones": options,
    }


def _category_ambiguity_message(options: dict[str, list[str]]) -> str:
    return (
        "Puedo interpretarlo de dos formas:\n\n"
        f"1. Una sola categoria: {', '.join(options['una_categoria'])}\n"
        f"2. Dos categorias: {' y '.join(options['varias_categorias'])} por separado\n"
        "Quieres registrarla como una sola categoria o como dos categorias distintas?"
    )


def _is_string_list(value: object) -> TypeGuard[list[str]]:
    return isinstance(value, list) and all(isinstance(item, str) for item in value)


def _products_list_message(title: str, products: list[Any]) -> str:
    lines = [title]
    for product in products:
        price = f" - S/ {product.unit_price}" if product.unit_price is not None else ""
        lines.append(f"- {product.name}{price}")
    return "\n".join(lines)


def _create_product_name_prompt() -> str:
    return (
        "Perfecto, vamos a registrar un producto.\n"
        "Cual es el nombre del producto que quieres registrar? "
        "Puedes responder solo con el nombre."
    )


def _create_product_category_prompt(product_name: str) -> str:
    return (
        f"Perfecto, vamos a registrar el producto {product_name}.\n"
        "Cual es la categoria del producto? Puedes responder solo con el nombre."
    )


def _company_name(organization_name: str | None) -> str:
    if organization_name is not None and organization_name.strip():
        return organization_name.strip()
    return "Qypu"


def _help_message(organization_name: str | None = None) -> str:
    company_name = _company_name(organization_name)
    return (
        f"Soy el almacenero de {company_name}. Puedes escribir:\n"
        "- registrar producto arroz categoria alimentos stock 10\n"
        "- registrar categoria alimentos\n"
        "- editar categoria alimentos nombre abarrotes\n"
        "- crear producto shampoo categoria cuidado personal precio 12.50 stock 5\n"
        "- stock arroz +3\n"
        "- stock arroz 20\n"
        "- cuanto stock tiene arroz\n"
        "- productos de la categoria alimentos\n"
        "- listar productos\n"
        "- listar categorias"
    )


def _seller_help_message(organization_name: str | None = None) -> str:
    company_name = _company_name(organization_name)
    return (
        f"Soy el vendedor de {company_name}. Puedes escribir:\n"
        "- registrar venta cliente Juan Perez: 2 arroz a 3.50\n"
        "- ventas de hoy\n"
        "- ventas del 2026-07-02\n"
        "- ventas de arroz"
    )


def _agent_help_message(agent_type: str, organization_name: str | None = None) -> str:
    if agent_type == "seller":
        return _seller_help_message(organization_name)
    return _help_message(organization_name)


def _agent_selection_message() -> str:
    return (
        "Escoge que accion quieres realizar:\n"
        "- Escribe Vendedor para ventas, pedidos, clientes o comprobantes.\n"
        "- Escribe Almacenero para productos, categorias, stock o inventario.\n\n"
        "Tambien puedes escribir la accion directamente, por ejemplo: "
        "stock arroz +3 o registrar venta."
    )
