from dataclasses import dataclass
from uuid import UUID


@dataclass(frozen=True)
class Category:
    id: UUID
    organization_id: UUID
    name: str
