from datetime import date
from decimal import Decimal
from typing import Any, cast
from uuid import UUID

from psycopg import AsyncConnection, Error

from app.modules.products.models import Branch, Product
from app.modules.sales.exceptions import SalePersistenceError
from app.modules.sales.models import Sale, SaleDetail


class SalesRepository:
    def __init__(self, connection: AsyncConnection[Any]) -> None:
        self._connection = connection

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

    async def find_product_by_name(self, organization_id: UUID, name: str) -> Product | None:
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
        if row is None:
            return await self.find_product_like_name(organization_id, name)
        return self._build_product(cast(dict[str, Any], row))

    async def find_product_like_name(self, organization_id: UUID, name: str) -> Product | None:
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

    async def create_sale(
        self,
        sale_id: UUID,
        branch_id: UUID,
        issue_date: date,
        total_amount: Decimal,
        details: list[tuple[UUID, UUID, int, Decimal]],
    ) -> Sale:
        try:
            result = await self._connection.execute(
                """
                INSERT INTO sales (id, branch_id, issue_date, status, total_amount)
                VALUES (%(id)s, %(branch_id)s, %(issue_date)s, 'valid', %(total_amount)s)
                RETURNING id, branch_id, issue_date, status, total_amount
                """,
                {
                    "id": str(sale_id),
                    "branch_id": str(branch_id),
                    "issue_date": issue_date,
                    "total_amount": total_amount,
                },
            )
            sale_row = cast(dict[str, Any], await result.fetchone())

            sale_details: list[SaleDetail] = []
            for detail_id, product_id, quantity, unit_price in details:
                detail_result = await self._connection.execute(
                    """
                    INSERT INTO sale_details (id, sale_id, product_id, quantity, unit_price)
                    VALUES (
                        %(id)s,
                        %(sale_id)s,
                        %(product_id)s,
                        %(quantity)s,
                        %(unit_price)s
                    )
                    RETURNING id, sale_id, product_id, quantity, unit_price
                    """,
                    {
                        "id": str(detail_id),
                        "sale_id": str(sale_id),
                        "product_id": str(product_id),
                        "quantity": quantity,
                        "unit_price": unit_price,
                    },
                )
                detail_row = cast(dict[str, Any], await detail_result.fetchone())
                sale_details.append(
                    SaleDetail(
                        id=UUID(str(detail_row["id"])),
                        sale_id=UUID(str(detail_row["sale_id"])),
                        product_id=UUID(str(detail_row["product_id"])),
                        product_name="",
                        quantity=int(detail_row["quantity"]),
                        unit_price=Decimal(str(detail_row["unit_price"])),
                    )
                )
        except Error as exc:
            raise SalePersistenceError() from exc

        return Sale(
            id=UUID(str(sale_row["id"])),
            branch_id=UUID(str(sale_row["branch_id"])),
            issue_date=cast(date, sale_row["issue_date"]),
            status=str(sale_row["status"]),
            total_amount=Decimal(str(sale_row["total_amount"])),
            details=sale_details,
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

