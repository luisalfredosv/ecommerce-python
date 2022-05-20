from sqlalchemy import Table, Column
from config.db import meta, engine
from sqlalchemy.types import Integer, String, DateTime, Float

products = Table("products", meta,
    Column("id", Integer, primary_key=True, autoincrement=True),
    Column("name", String(50)),
    Column("slug", String(30)),
    Column("price", Float),
    Column("description", String(500)),
    Column("image_url", String(500)),
    Column("brand", String(500)),
    Column("category", String(500)),
    Column("created_at", DateTime),
    Column("updated_at", DateTime))

meta.create_all(engine)