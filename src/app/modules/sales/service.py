from datetime import UTC, date, datetime
from decimal import Decimal
from uuid import UUID, uuid4

from app.modules.products.exceptions import (
    ProductBranchNotFoundError,
    ProductNotFoundError,
    ProductStockWouldBeNegativeError,
)
from app.modules.sales.exceptions import SaleWithoutItemsError
from app.modules.sales.models import Sale, SaleItemInput
from app.modules.sales.repository import SalesRepository


class SalesUseCase:
    def __init__(self, repository: SalesRepository) -> None:
        self._repository = repository

    async def create_sale(
        self,
        organization_id: UUID,
        items: list[SaleItemInput],
        client_name: str | None = None,
    ) -> Sale:
        if not items:
            raise SaleWithoutItemsError()

        branch = await self._repository.get_default_branch(organization_id)
        if branch is None:
            raise ProductBranchNotFoundError()

        requested_quantities: dict[UUID, int] = {}
        details: list[tuple[UUID, UUID, int, Decimal]] = []
        total_amount = Decimal("0")
        for item in items:
            if item.quantity <= 0:
                raise ProductStockWouldBeNegativeError()

            product = await self._repository.find_product_by_name(
                organization_id,
                item.product_name,
            )
            if product is None:
                raise ProductNotFoundError()
            if item.unit_price is None and product.unit_price is None:
                raise ProductNotFoundError()

            unit_price = item.unit_price if item.unit_price is not None else product.unit_price
            if unit_price is None:
                raise ProductNotFoundError()
            requested_quantities[product.id] = (
                requested_quantities.get(product.id, 0) + item.quantity
            )
            details.append((uuid4(), product.id, item.quantity, unit_price))
            total_amount += unit_price * item.quantity

        for product_id, quantity in requested_quantities.items():
            await self._repository.decrement_stock(
                product_id=product_id,
                branch_id=branch.id,
                quantity=quantity,
            )

        client = None
        if client_name is not None and client_name.strip():
            clean_client_name = client_name.strip()
            client = await self._repository.find_client_by_name(
                organization_id,
                clean_client_name,
            )
            if client is None:
                client = await self._repository.create_client(
                    client_id=uuid4(),
                    organization_id=organization_id,
                    name=clean_client_name,
                )

        return await self._repository.create_sale(
            sale_id=uuid4(),
            branch_id=branch.id,
            issue_date=datetime.now(UTC).date(),
            total_amount=total_amount,
            details=details,
            client_id=client.id if client is not None else None,
            client_name=client.name if client is not None else None,
        )

    async def list_sales_by_date(
        self,
        organization_id: UUID,
        issue_date: date,
    ) -> list[Sale]:
        return await self._repository.list_sales_by_date(organization_id, issue_date)

    async def list_sales_by_product(
        self,
        organization_id: UUID,
        product_name: str,
    ) -> list[Sale]:
        return await self._repository.list_sales_by_product(organization_id, product_name)
