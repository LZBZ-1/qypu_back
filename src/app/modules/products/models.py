from dataclasses import dataclass
from decimal import Decimal
from uuid import UUID


@dataclass(frozen=True)
class Category:
    id: UUID
    organization_id: UUID
    name: str


@dataclass(frozen=True)
class Branch:
    id: UUID
    organization_id: UUID
    name: str


@dataclass(frozen=True)
class Product:
    id: UUID
    organization_id: UUID
    category_id: UUID
    name: str
    unit_price: Decimal | None = None


@dataclass(frozen=True)
class ProductStock:
    product_id: UUID
    branch_id: UUID
    branch_name: str
    quantity: int
