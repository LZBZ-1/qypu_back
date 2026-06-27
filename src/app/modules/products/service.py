from decimal import Decimal
from uuid import UUID, uuid4

from app.modules.products.exceptions import (
    ProductBranchNotFoundError,
    ProductCategoryNotFoundError,
    ProductNotFoundError,
    ProductStockWouldBeNegativeError,
)
from app.modules.products.models import Product, ProductStock
from app.modules.products.repository import ProductsRepository


class ProductsUseCase:
    def __init__(self, repository: ProductsRepository) -> None:
        self._repository = repository

    async def create_product(
        self,
        organization_id: UUID,
        name: str,
        category_name: str,
        unit_price: Decimal | None,
        initial_stock: int | None,
    ) -> tuple[Product, ProductStock | None]:
        category = await self._repository.find_category_by_name(organization_id, category_name)
        if category is None:
            category = await self._repository.find_category_like_name(
                organization_id,
                category_name,
            )
        if category is None:
            raise ProductCategoryNotFoundError()

        product = await self._repository.create_product(
            product_id=uuid4(),
            organization_id=organization_id,
            category_id=category.id,
            name=name,
            unit_price=unit_price,
        )

        stock = None
        if initial_stock is not None:
            if initial_stock < 0:
                raise ProductStockWouldBeNegativeError()
            branch = await self._repository.get_default_branch(organization_id)
            if branch is None:
                raise ProductBranchNotFoundError()
            stock = await self._repository.set_stock(product.id, branch.id, initial_stock)

        return product, stock

    async def list_products(self, organization_id: UUID) -> list[Product]:
        return await self._repository.list_products(organization_id)

    async def get_product_stock(
        self,
        organization_id: UUID,
        product_name: str,
    ) -> tuple[Product, int]:
        product = await self._find_product(organization_id, product_name)
        return product, await self._repository.get_total_stock(product.id)

    async def set_product_stock(
        self,
        organization_id: UUID,
        product_name: str,
        quantity: int,
    ) -> tuple[Product, ProductStock]:
        if quantity < 0:
            raise ProductStockWouldBeNegativeError()

        product = await self._find_product(organization_id, product_name)
        branch = await self._repository.get_default_branch(organization_id)
        if branch is None:
            raise ProductBranchNotFoundError()

        stock = await self._repository.set_stock(product.id, branch.id, quantity)
        return product, stock

    async def increment_product_stock(
        self,
        organization_id: UUID,
        product_name: str,
        delta: int,
    ) -> tuple[Product, ProductStock]:
        product = await self._find_product(organization_id, product_name)
        branch = await self._repository.get_default_branch(organization_id)
        if branch is None:
            raise ProductBranchNotFoundError()

        current = await self._repository.get_stock(product.id, branch.id)
        current_quantity = current.quantity if current else 0
        if current_quantity + delta < 0:
            raise ProductStockWouldBeNegativeError()

        stock = await self._repository.increment_stock(product.id, branch.id, delta)
        return product, stock

    async def rename_product(
        self,
        organization_id: UUID,
        product_name: str,
        new_name: str,
    ) -> Product:
        product = await self._find_product(organization_id, product_name)
        return await self._repository.update_product_name(product.id, new_name)

    async def _find_product(self, organization_id: UUID, product_name: str) -> Product:
        product = await self._repository.find_product_by_name(organization_id, product_name)
        if product is None:
            product = await self._repository.find_product_like_name(organization_id, product_name)
        if product is None:
            raise ProductNotFoundError()
        return product
