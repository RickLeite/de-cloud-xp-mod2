from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from redis import Redis, RedisError

app = FastAPI()
redis = Redis(host="redis", port=6379)
templates = Jinja2Templates(directory="templates")


@app.get("/")
async def root(Request: Request):
    redis.incr("count")
    count = str(redis.get("count"), "utf-8")
    return templates.TemplateResponse(
        "index.html", {"request": Request, "count": count}
    )


@app.get("/healthz")
async def health():
    return {"message": "Hello World!"}
