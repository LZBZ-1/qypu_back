from app.core.exceptions import DomainError


class ProductPersistenceError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="PRODUCT_PERSISTENCE_ERROR",
            message="product operation could not be completed",
            status_code=500,
        )


class ProductNotFoundError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="PRODUCT_NOT_FOUND",
            message="product was not found",
            status_code=404,
        )


class ProductCategoryNotFoundError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="PRODUCT_CATEGORY_NOT_FOUND",
            message="product category was not found",
            status_code=404,
        )


class ProductBranchNotFoundError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="PRODUCT_BRANCH_NOT_FOUND",
            message="product branch was not found",
            status_code=404,
        )


class ProductStockWouldBeNegativeError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code="PRODUCT_STOCK_WOULD_BE_NEGATIVE",
            message="product stock cannot be negative",
            status_code=400,
        )
