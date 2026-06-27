from typing import Any, cast
from uuid import UUID

from psycopg import AsyncConnection, Error

from app.modules.categories.exceptions import CategoryPersistenceError
from app.modules.categories.models import Category


class CategoriesRepository:
    def __init__(self, connection: AsyncConnection[Any]) -> None:
        self._connection = connection

    async def list_categories(self, organization_id: UUID) -> list[Category]:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, name
            FROM categories
            WHERE organization_id = %(organization_id)s
            ORDER BY name
            """,
            {"organization_id": str(organization_id)},
        )
        rows = cast(list[dict[str, Any]], await result.fetchall())
        return [self._build_category(row) for row in rows]

    async def create_category(
        self,
        category_id: UUID,
        organization_id: UUID,
        name: str,
    ) -> Category:
        try:
            result = await self._connection.execute(
                """
                INSERT INTO categories (id, organization_id, name)
                VALUES (%(id)s, %(organization_id)s, %(name)s)
                RETURNING id, organization_id, name
                """,
                {
                    "id": str(category_id),
                    "organization_id": str(organization_id),
                    "name": name,
                },
            )
            row = cast(dict[str, Any], await result.fetchone())
        except Error as exc:
            raise CategoryPersistenceError() from exc

        return self._build_category(row)

    async def find_category_by_name(
        self,
        organization_id: UUID,
        name: str,
    ) -> Category | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, name
            FROM categories
            WHERE organization_id = %(organization_id)s
              AND lower(name) = lower(%(name)s)
            LIMIT 1
            """,
            {"organization_id": str(organization_id), "name": name},
        )
        row = await result.fetchone()
        return self._build_category(cast(dict[str, Any], row)) if row else None

    async def find_category_like_name(
        self,
        organization_id: UUID,
        name: str,
    ) -> Category | None:
        result = await self._connection.execute(
            """
            SELECT id, organization_id, name
            FROM categories
            WHERE organization_id = %(organization_id)s
              AND lower(name) LIKE lower(%(name)s)
            ORDER BY length(name), name
            LIMIT 1
            """,
            {"organization_id": str(organization_id), "name": f"%{name}%"},
        )
        row = await result.fetchone()
        return self._build_category(cast(dict[str, Any], row)) if row else None

    async def update_category_name(
        self,
        category_id: UUID,
        name: str,
    ) -> Category:
        try:
            result = await self._connection.execute(
                """
                UPDATE categories
                SET name = %(name)s
                WHERE id = %(category_id)s
                RETURNING id, organization_id, name
                """,
                {"category_id": str(category_id), "name": name},
            )
            row = await result.fetchone()
        except Error as exc:
            raise CategoryPersistenceError() from exc

        if row is None:
            raise CategoryPersistenceError()

        return self._build_category(cast(dict[str, Any], row))

    def _build_category(self, row: dict[str, Any]) -> Category:
        return Category(
            id=UUID(str(row["id"])),
            organization_id=UUID(str(row["organization_id"])),
            name=str(row["name"]),
        )
