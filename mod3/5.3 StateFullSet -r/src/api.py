from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from rediscluster import RedisCluster

import os

db_host = os.environ.get("REDIS_HOST", "redis")
db_port = os.environ.get("REDIS_PORT", "6379")


app = FastAPI()
redis = RedisCluster(host=db_host, port=db_port, decode_responses=True)

templates = Jinja2Templates(directory="templates")


@app.get("/")
async def root():
    global redis
    redis.incr("count")
    count = redis.get("count")
    return templates.TemplateResponse("index.html", {"count": count})


@app.get("/healthz")
async def health():
    return {"message": "Hello World!"}
