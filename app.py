from fastapi import FastAPI, Request
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse

from models.products import products
from config.db import conn
from routes.product import product

app = FastAPI()
app.mount("/static", StaticFiles(directory="static"), name="static")
templates = Jinja2Templates(directory="templates")

@app.get("/", response_class=HTMLResponse)
async def home(request: Request):
    items = conn.execute(products.select()).fetchall()
    return templates.TemplateResponse("index.html", {"request": request, "products": items})

app.include_router(product, tags=["Products"])
