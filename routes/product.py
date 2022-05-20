from fastapi import APIRouter, Request
from config.db import conn
from models.products import products
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse

product = APIRouter(prefix="/products")
templates = Jinja2Templates(directory="templates")

# Todos los productos
@product.get("/", response_class=HTMLResponse)
async def all_products(request: Request):
    items = conn.execute(products.select()).fetchall()
    return templates.TemplateResponse("products.html", {"request": request, "products": items})

# Producto por slug
@product.get("/{product_slug}", response_class=HTMLResponse)
async def read_item(request: Request, product_slug: str):

    find_product = conn.execute(products.select().where(
        products.c.slug == product_slug)).first()
    return templates.TemplateResponse("product.html", {"request": request, "product": find_product})
