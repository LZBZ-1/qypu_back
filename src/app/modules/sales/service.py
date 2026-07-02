from datetime import UTC, datetime
from decimal import Decimal
from uuid import UUID, uuid4

from app.modules.products.exceptions import ProductBranchNotFoundError, ProductNotFoundError
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
    ) -> Sale:
        if not items:
            raise SaleWithoutItemsError()

        branch = await self._repository.get_default_branch(organization_id)
        if branch is None:
            raise ProductBranchNotFoundError()

        details: list[tuple[UUID, UUID, int, Decimal]] = []
        total_amount = Decimal("0")
        for item in items:
            product = await self._repository.find_product_by_name(
                organization_id,
                item.product_name,
            )
            if product is None:
                raise ProductNotFoundError()
            details.append((uuid4(), product.id, item.quantity, item.unit_price))
            total_amount += item.unit_price * item.quantity

        return await self._repository.create_sale(
            sale_id=uuid4(),
            branch_id=branch.id,
            issue_date=datetime.now(UTC).date(),
            total_amount=total_amount,
            details=details,
        )
