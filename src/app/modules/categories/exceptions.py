from app.core.exceptions import DomainError


class CategoryPersistenceError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="CATEGORY_PERSISTENCE_ERROR",
            message="category operation could not be completed",
            status_code=500,
        )


class CategoryNotFoundError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="CATEGORY_NOT_FOUND",
            message="category was not found",
            status_code=404,
        )
