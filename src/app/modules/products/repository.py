from decimal import Decimal
from typing import Any, cast
from uuid import UUID

from psycopg import AsyncConnection, Error

from app.modules.products.exceptions import ProductPersistenceError
from app.modules.products.models import Branch, Product, ProductStock


class ProductsRepository:
    def __init__(self, connection: AsyncConnection[Any]) -> None:
        self._connection = connection

    async def list_products(self, organization_id: UUID, limit: int = 10) -> list[Product]:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, category_id, name, unit_price
            FROM products
            WHERE organization_id = %(organization_id)s
            ORDER BY name
            LIMIT %(limit)s
            """,
            {"organization_id": str(organization_id), "limit": limit},
        )
        rows = cast(list[dict[str, Any]], await result.fetchall())
        return [self._build_product(row) for row in rows]

    async def list_products_by_category(
        self,
        organization_id: UUID,
        category_id: UUID,
        limit: int = 10,
    ) -> list[Product]:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, category_id, name, unit_price
            FROM products
            WHERE organization_id = %(organization_id)s
              AND category_id = %(category_id)s
            ORDER BY name
            LIMIT %(limit)s
            """,
            {
                "organization_id": str(organization_id),
                "category_id": str(category_id),
                "limit": limit,
            },
        )
        rows = cast(list[dict[str, Any]], await result.fetchall())
        return [self._build_product(row) for row in rows]

    async def find_product_by_name(
        self,
        organization_id: UUID,
        name: str,
    ) -> Product | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, category_id, name, unit_price
            FROM products
            WHERE organization_id = %(organization_id)s
              AND lower(name) = lower(%(name)s)
            LIMIT 1
            """,
            {"organization_id": str(organization_id), "name": name},
        )
        row = await result.fetchone()
        return self._build_product(cast(dict[str, Any], row)) if row else None

    async def find_product_like_name(
        self,
        organization_id: UUID,
        name: str,
    ) -> Product | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, category_id, name, unit_price
            FROM products
            WHERE organization_id = %(organization_id)s
              AND lower(name) LIKE lower(%(name)s)
            ORDER BY length(name), name
            LIMIT 1
            """,
            {"organization_id": str(organization_id), "name": f"%{name}%"},
        )
        row = await result.fetchone()
        return self._build_product(cast(dict[str, Any], row)) if row else None

    async def create_product(
        self,
        product_id: UUID,
        organization_id: UUID,
        category_id: UUID,
        name: str,
        unit_price: Decimal | None,
    ) -> Product:
        try:
            result = await self._connection.execute(
                """
                INSERT INTO products (id, organization_id, category_id, name, unit_price)
                VALUES (
                    %(id)s,
                    %(organization_id)s,
                    %(category_id)s,
                    %(name)s,
                    %(unit_price)s
                )
                RETURNING id, organization_id, category_id, name, unit_price
                """,
                {
                    "id": str(product_id),
                    "organization_id": str(organization_id),
                    "category_id": str(category_id),
                    "name": name,
                    "unit_price": unit_price,
                },
            )
            row = cast(dict[str, Any], await result.fetchone())
        except Error as exc:
            raise ProductPersistenceError() from exc

        return self._build_product(row)

    async def update_product_name(
        self,
        product_id: UUID,
        name: str,
    ) -> Product:
        try:
            result = await self._connection.execute(
                """
                UPDATE products
                SET name = %(name)s
                WHERE id = %(product_id)s
                RETURNING id, organization_id, category_id, name, unit_price
                """,
                {"product_id": str(product_id), "name": name},
            )
            row = await result.fetchone()
        except Error as exc:
            raise ProductPersistenceError() from exc

        if row is None:
            raise ProductPersistenceError()

        return self._build_product(cast(dict[str, Any], row))

    async def get_default_branch(self, organization_id: UUID) -> Branch | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, name
            FROM branches
            WHERE organization_id = %(organization_id)s
            ORDER BY
                CASE WHEN lower(name) = 'sucursal principal' THEN 0 ELSE 1 END,
                name
            LIMIT 1
            """,
            {"organization_id": str(organization_id)},
        )
        row = await result.fetchone()
        if row is None:
            return None

        data = cast(dict[str, Any], row)
        return Branch(
            id=UUID(str(data["id"])),
            organization_id=UUID(str(data["organization_id"])),
            name=str(data["name"]),
        )

    async def get_stock(self, product_id: UUID, branch_id: UUID) -> ProductStock | None:
        result = await self._connection.execute(
            """
            SELECT ps.product_id, ps.branch_id, b.name AS branch_name, ps.quantity
            FROM product_stocks ps
            JOIN branches b ON b.id = ps.branch_id
            WHERE ps.product_id = %(product_id)s
              AND ps.branch_id = %(branch_id)s
            LIMIT 1
            """,
            {"product_id": str(product_id), "branch_id": str(branch_id)},
        )
        row = await result.fetchone()
        return self._build_stock(cast(dict[str, Any], row)) if row else None

    async def get_total_stock(self, product_id: UUID) -> int:
        result = await self._connection.execute(
            """
            SELECT COALESCE(SUM(quantity), 0) AS quantity
            FROM product_stocks
            WHERE product_id = %(product_id)s
            """,
            {"product_id": str(product_id)},
        )
        row = cast(dict[str, Any], await result.fetchone())
        return int(row["quantity"])

    async def set_stock(
        self,
        product_id: UUID,
        branch_id: UUID,
        quantity: int,
    ) -> ProductStock:
        try:
            result = await self._connection.execute(
                """
                INSERT INTO product_stocks (product_id, branch_id, quantity)
                VALUES (%(product_id)s, %(branch_id)s, %(quantity)s)
                ON CONFLICT (product_id, branch_id) DO UPDATE
                SET quantity = EXCLUDED.quantity,
                    updated_at = now()
                RETURNING product_id, branch_id, quantity
                """,
                {
                    "product_id": str(product_id),
                    "branch_id": str(branch_id),
                    "quantity": quantity,
                },
            )
        except Error as exc:
            raise ProductPersistenceError() from exc

        row = cast(dict[str, Any], await result.fetchone())
        branch = await self.get_default_branch_for_id(UUID(str(row["branch_id"])))
        return ProductStock(
            product_id=UUID(str(row["product_id"])),
            branch_id=UUID(str(row["branch_id"])),
            branch_name=branch.name if branch else "",
            quantity=int(row["quantity"]),
        )

    async def increment_stock(
        self,
        product_id: UUID,
        branch_id: UUID,
        delta: int,
    ) -> ProductStock:
        current = await self.get_stock(product_id, branch_id)
        next_quantity = (current.quantity if current else 0) + delta
        return await self.set_stock(product_id, branch_id, next_quantity)

    async def get_default_branch_for_id(self, branch_id: UUID) -> Branch | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, name
            FROM branches
            WHERE id = %(branch_id)s
            LIMIT 1
            """,
            {"branch_id": str(branch_id)},
        )
        row = await result.fetchone()
        if row is None:
            return None

        data = cast(dict[str, Any], row)
        return Branch(
            id=UUID(str(data["id"])),
            organization_id=UUID(str(data["organization_id"])),
            name=str(data["name"]),
        )

    def _build_product(self, row: dict[str, Any]) -> Product:
        unit_price = row["unit_price"]
        return Product(
            id=UUID(str(row["id"])),
            organization_id=UUID(str(row["organization_id"])),
            category_id=UUID(str(row["category_id"])),
            name=str(row["name"]),
            unit_price=Decimal(str(unit_price)) if unit_price is not None else None,
        )

    def _build_stock(self, row: dict[str, Any]) -> ProductStock:
        return ProductStock(
            product_id=UUID(str(row["product_id"])),
            branch_id=UUID(str(row["branch_id"])),
            branch_name=str(row["branch_name"]),
            quantity=int(row["quantity"]),
        )
