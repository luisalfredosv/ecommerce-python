from typing import Optional
from pydantic import BaseModel

class Product(BaseModel):
    id: int
    name: str
    slug: str
    price: float
    description: str
    image_url: str
    brand: str
    category: str
    created_at: str
    updated_at: str