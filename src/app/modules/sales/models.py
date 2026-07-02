from dataclasses import dataclass
from datetime import date
from decimal import Decimal
from uuid import UUID


@dataclass(frozen=True)
class SaleItemInput:
    product_name: str
    quantity: int
    unit_price: Decimal


@dataclass(frozen=True)
class SaleDetail:
    id: UUID
    sale_id: UUID
    product_id: UUID
    product_name: str
    quantity: int
    unit_price: Decimal

    @property
    def subtotal(self) -> Decimal:
        return self.unit_price * self.quantity


@dataclass(frozen=True)
class Sale:
    id: UUID
    branch_id: UUID
    issue_date: date
    status: str
    total_amount: Decimal
    details: list[SaleDetail]

