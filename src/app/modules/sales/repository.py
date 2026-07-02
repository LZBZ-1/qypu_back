from datetime import date
from decimal import Decimal
from typing import Any, cast
from uuid import UUID

from psycopg import AsyncConnection, Error

from app.modules.products.exceptions import ProductStockWouldBeNegativeError
from app.modules.products.models import Branch, Product
from app.modules.sales.exceptions import SalePersistenceError
from app.modules.sales.models import Client, Sale, SaleDetail


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
        tokens = [token for token in name.split() if token]
        if not tokens:
            return None
        token_conditions = [
            f"lower(name) LIKE lower(%(token_{index})s)" for index, _token in enumerate(tokens)
        ]
        params: dict[str, object] = {"organization_id": str(organization_id)}
        params.update({f"token_{index}": f"%{token}%" for index, token in enumerate(tokens)})
        result = await self._connection.execute(
            f"""
            SELECT id, organization_id, category_id, name, unit_price
            FROM products
            WHERE organization_id = %(organization_id)s
              AND {" AND ".join(token_conditions)}
            ORDER BY length(name), name
            LIMIT 1
            """,
            params,
        )
        row = await result.fetchone()
        return self._build_product(cast(dict[str, Any], row)) if row else None

    async def find_client_by_name(self, organization_id: UUID, name: str) -> Client | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, name
            FROM clients
            WHERE organization_id = %(organization_id)s
              AND lower(name) = lower(%(name)s)
            LIMIT 1
            """,
            {"organization_id": str(organization_id), "name": name},
        )
        row = await result.fetchone()
        return self._build_client(cast(dict[str, Any], row)) if row else None

    async def create_client(
        self,
        client_id: UUID,
        organization_id: UUID,
        name: str,
    ) -> Client:
        try:
            result = await self._connection.execute(
                """
                INSERT INTO clients (id, organization_id, name, email, phone_number)
                VALUES (%(id)s, %(organization_id)s, %(name)s, NULL, NULL)
                RETURNING id, organization_id, name
                """,
                {
                    "id": str(client_id),
                    "organization_id": str(organization_id),
                    "name": name,
                },
            )
            row = cast(dict[str, Any], await result.fetchone())
        except Error as exc:
            raise SalePersistenceError() from exc

        return self._build_client(row)

    async def create_sale(
        self,
        sale_id: UUID,
        branch_id: UUID,
        issue_date: date,
        total_amount: Decimal,
        details: list[tuple[UUID, UUID, int, Decimal]],
        client_id: UUID | None = None,
        client_name: str | None = None,
    ) -> Sale:
        try:
            result = await self._connection.execute(
                """
                INSERT INTO sales (id, client_id, branch_id, issue_date, status, total_amount)
                VALUES (
                    %(id)s,
                    %(client_id)s,
                    %(branch_id)s,
                    %(issue_date)s,
                    'valid',
                    %(total_amount)s
                )
                RETURNING id, client_id, branch_id, issue_date, status, total_amount
                """,
                {
                    "id": str(sale_id),
                    "client_id": str(client_id) if client_id is not None else None,
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
            client_id=UUID(str(sale_row["client_id"])) if sale_row["client_id"] else None,
            client_name=client_name,
        )

    async def decrement_stock(
        self,
        product_id: UUID,
        branch_id: UUID,
        quantity: int,
    ) -> None:
        try:
            result = await self._connection.execute(
                """
                UPDATE product_stocks
                SET quantity = quantity - %(quantity)s,
                    updated_at = now()
                WHERE product_id = %(product_id)s
                  AND branch_id = %(branch_id)s
                  AND quantity >= %(quantity)s
                RETURNING quantity
                """,
                {
                    "product_id": str(product_id),
                    "branch_id": str(branch_id),
                    "quantity": quantity,
                },
            )
            row = await result.fetchone()
        except Error as exc:
            raise SalePersistenceError() from exc

        if row is None:
            raise ProductStockWouldBeNegativeError()

    async def list_sales_by_date(
        self,
        organization_id: UUID,
        issue_date: date,
        limit: int = 10,
    ) -> list[Sale]:
        result = await self._connection.execute(
            """
            SELECT s.id, s.client_id, c.name AS client_name, s.branch_id, s.issue_date,
                   s.status, s.total_amount
            FROM sales s
            JOIN branches b ON b.id = s.branch_id
            LEFT JOIN clients c ON c.id = s.client_id
            WHERE b.organization_id = %(organization_id)s
              AND s.issue_date = %(issue_date)s
              AND s.status = 'valid'
            ORDER BY s.issue_date DESC, s.id DESC
            LIMIT %(limit)s
            """,
            {
                "organization_id": str(organization_id),
                "issue_date": issue_date,
                "limit": limit,
            },
        )
        rows = cast(list[dict[str, Any]], await result.fetchall())
        return await self._build_sales(rows)

    async def list_sales_by_product(
        self,
        organization_id: UUID,
        product_name: str,
        limit: int = 10,
    ) -> list[Sale]:
        result = await self._connection.execute(
            """
            SELECT DISTINCT s.id, s.client_id, c.name AS client_name, s.branch_id,
                   s.issue_date, s.status, s.total_amount
            FROM sales s
            JOIN branches b ON b.id = s.branch_id
            JOIN sale_details sd ON sd.sale_id = s.id
            JOIN products p ON p.id = sd.product_id
            LEFT JOIN clients c ON c.id = s.client_id
            WHERE b.organization_id = %(organization_id)s
              AND lower(p.name) LIKE lower(%(product_name)s)
              AND s.status = 'valid'
            ORDER BY s.issue_date DESC, s.id DESC
            LIMIT %(limit)s
            """,
            {
                "organization_id": str(organization_id),
                "product_name": f"%{product_name}%",
                "limit": limit,
            },
        )
        rows = cast(list[dict[str, Any]], await result.fetchall())
        return await self._build_sales(rows)

    def _build_product(self, row: dict[str, Any]) -> Product:
        unit_price = row["unit_price"]
        return Product(
            id=UUID(str(row["id"])),
            organization_id=UUID(str(row["organization_id"])),
            category_id=UUID(str(row["category_id"])),
            name=str(row["name"]),
            unit_price=Decimal(str(unit_price)) if unit_price is not None else None,
        )

    def _build_client(self, row: dict[str, Any]) -> Client:
        return Client(
            id=UUID(str(row["id"])),
            organization_id=UUID(str(row["organization_id"])),
            name=str(row["name"]),
        )

    async def _build_sales(self, rows: list[dict[str, Any]]) -> list[Sale]:
        sales: list[Sale] = []
        for row in rows:
            sale_id = UUID(str(row["id"]))
            sales.append(
                Sale(
                    id=sale_id,
                    branch_id=UUID(str(row["branch_id"])),
                    issue_date=cast(date, row["issue_date"]),
                    status=str(row["status"]),
                    total_amount=Decimal(str(row["total_amount"])),
                    details=await self._list_sale_details(sale_id),
                    client_id=UUID(str(row["client_id"])) if row["client_id"] else None,
                    client_name=str(row["client_name"]) if row["client_name"] else None,
                )
            )
        return sales

    async def _list_sale_details(self, sale_id: UUID) -> list[SaleDetail]:
        result = await self._connection.execute(
            """
            SELECT sd.id, sd.sale_id, sd.product_id, p.name AS product_name,
                   sd.quantity, sd.unit_price
            FROM sale_details sd
            JOIN products p ON p.id = sd.product_id
            WHERE sd.sale_id = %(sale_id)s
            ORDER BY p.name
            """,
            {"sale_id": str(sale_id)},
        )
        rows = cast(list[dict[str, Any]], await result.fetchall())
        return [
            SaleDetail(
                id=UUID(str(row["id"])),
                sale_id=UUID(str(row["sale_id"])),
                product_id=UUID(str(row["product_id"])),
                product_name=str(row["product_name"]),
                quantity=int(row["quantity"]),
                unit_price=Decimal(str(row["unit_price"])),
            )
            for row in rows
        ]
