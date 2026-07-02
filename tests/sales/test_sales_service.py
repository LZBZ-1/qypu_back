from datetime import UTC, datetime
from decimal import Decimal
from uuid import UUID, uuid4

import pytest

from app.modules.products.exceptions import ProductStockWouldBeNegativeError
from app.modules.products.models import Branch, Product
from app.modules.sales.models import Client, Sale, SaleItemInput
from app.modules.sales.service import SalesUseCase


class FakeSalesRepository:
    def __init__(self, available_stock: int = 10) -> None:
        self.branch = Branch(id=uuid4(), organization_id=uuid4(), name="Sucursal Principal")
        self.product = Product(
            id=uuid4(),
            organization_id=self.branch.organization_id,
            category_id=uuid4(),
            name="arroz",
            unit_price=Decimal("3.50"),
        )
        self.available_stock = available_stock
        self.decremented: list[tuple[UUID, UUID, int]] = []
        self.created_sale = False
        self.existing_client: Client | None = None
        self.created_client: Client | None = None
        self.sale_client_id: UUID | None = None

    async def get_default_branch(self, organization_id: UUID) -> Branch | None:
        return self.branch

    async def find_product_by_name(self, organization_id: UUID, name: str) -> Product | None:
        return self.product if name == self.product.name else None

    async def decrement_stock(
        self,
        product_id: UUID,
        branch_id: UUID,
        quantity: int,
    ) -> None:
        if self.available_stock < quantity:
            raise ProductStockWouldBeNegativeError()
        self.available_stock -= quantity
        self.decremented.append((product_id, branch_id, quantity))

    async def find_client_by_name(self, organization_id: UUID, name: str) -> Client | None:
        if self.existing_client is not None and self.existing_client.name == name:
            return self.existing_client
        return None

    async def create_client(
        self,
        client_id: UUID,
        organization_id: UUID,
        name: str,
    ) -> Client:
        self.created_client = Client(
            id=client_id,
            organization_id=organization_id,
            name=name,
        )
        return self.created_client

    async def create_sale(
        self,
        sale_id: UUID,
        branch_id: UUID,
        issue_date: object,
        total_amount: Decimal,
        details: list[tuple[UUID, UUID, int, Decimal]],
        client_id: UUID | None = None,
        client_name: str | None = None,
    ) -> Sale:
        self.created_sale = True
        self.sale_client_id = client_id
        return Sale(
            id=sale_id,
            branch_id=branch_id,
            issue_date=datetime.now(UTC).date(),
            status="valid",
            total_amount=total_amount,
            details=[],
            client_id=client_id,
            client_name=client_name,
        )


@pytest.mark.asyncio
async def test_create_sale_decrements_sold_product_stock() -> None:
    repository = FakeSalesRepository(available_stock=10)
    use_case = SalesUseCase(repository)

    sale = await use_case.create_sale(
        organization_id=repository.branch.organization_id,
        items=[
            SaleItemInput(product_name="arroz", quantity=2, unit_price=Decimal("3.50")),
        ],
    )

    assert sale.total_amount == Decimal("7.00")
    assert repository.available_stock == 8
    assert repository.decremented == [(repository.product.id, repository.branch.id, 2)]
    assert repository.created_sale is True
    assert sale.client_id is None


@pytest.mark.asyncio
async def test_create_sale_avoids_negative_stock_and_does_not_save_sale() -> None:
    repository = FakeSalesRepository(available_stock=1)
    use_case = SalesUseCase(repository)

    with pytest.raises(ProductStockWouldBeNegativeError):
        await use_case.create_sale(
            organization_id=repository.branch.organization_id,
            items=[
                SaleItemInput(product_name="arroz", quantity=2, unit_price=Decimal("3.50")),
            ],
        )

    assert repository.available_stock == 1
    assert repository.decremented == []
    assert repository.created_sale is False


@pytest.mark.asyncio
async def test_create_sale_associates_existing_client() -> None:
    repository = FakeSalesRepository(available_stock=10)
    repository.existing_client = Client(
        id=uuid4(),
        organization_id=repository.branch.organization_id,
        name="Juan Perez",
    )
    use_case = SalesUseCase(repository)

    sale = await use_case.create_sale(
        organization_id=repository.branch.organization_id,
        items=[
            SaleItemInput(product_name="arroz", quantity=1, unit_price=Decimal("3.50")),
        ],
        client_name="Juan Perez",
    )

    assert sale.client_id == repository.existing_client.id
    assert sale.client_name == "Juan Perez"
    assert repository.created_client is None


@pytest.mark.asyncio
async def test_create_sale_creates_missing_client() -> None:
    repository = FakeSalesRepository(available_stock=10)
    use_case = SalesUseCase(repository)

    sale = await use_case.create_sale(
        organization_id=repository.branch.organization_id,
        items=[
            SaleItemInput(product_name="arroz", quantity=1, unit_price=Decimal("3.50")),
        ],
        client_name="Maria Lopez",
    )

    assert repository.created_client is not None
    assert repository.created_client.name == "Maria Lopez"
    assert sale.client_id == repository.created_client.id
    assert sale.client_name == "Maria Lopez"
