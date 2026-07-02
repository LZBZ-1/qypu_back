from app.core.exceptions import DomainError


class SalePersistenceError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="SALE_PERSISTENCE_ERROR",
            message="sale operation could not be completed",
            status_code=500,
        )


class SaleWithoutItemsError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="SALE_WITHOUT_ITEMS",
            message="sale must include at least one item",
            status_code=400,
        )

