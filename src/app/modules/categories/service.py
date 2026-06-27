from uuid import UUID, uuid4

from app.modules.categories.exceptions import CategoryNotFoundError
from app.modules.categories.models import Category
from app.modules.categories.repository import CategoriesRepository


class CategoriesUseCase:
    def __init__(self, repository: CategoriesRepository) -> None:
        self._repository = repository

    async def list_categories(self, organization_id: UUID) -> list[Category]:
        return await self._repository.list_categories(organization_id)

    async def create_category(
        self,
        organization_id: UUID,
        name: str,
    ) -> Category:
        return await self._repository.create_category(
            category_id=uuid4(),
            organization_id=organization_id,
            name=name,
        )

    async def rename_category(
        self,
        organization_id: UUID,
        category_name: str,
        new_name: str,
    ) -> Category:
        category = await self.find_category(organization_id, category_name)
        return await self._repository.update_category_name(category.id, new_name)

    async def find_category_by_name(
        self,
        organization_id: UUID,
        category_name: str,
    ) -> Category | None:
        return await self._repository.find_category_by_name(organization_id, category_name)

    async def find_similar_category(
        self,
        organization_id: UUID,
        category_name: str,
    ) -> Category | None:
        return await self._repository.find_category_like_name(organization_id, category_name)

    async def find_category(self, organization_id: UUID, category_name: str) -> Category:
        category = await self._repository.find_category_by_name(organization_id, category_name)
        if category is None:
            category = await self._repository.find_category_like_name(
                organization_id,
                category_name,
            )
        if category is None:
            raise CategoryNotFoundError()
        return category
