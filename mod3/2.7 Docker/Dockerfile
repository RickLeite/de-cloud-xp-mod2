FROM alpine:3.17

RUN apk add --no-cache python3 py3-pip

RUN pip3 install --no-cache-dir fastapi==0.89.1 uvicorn==0.20.0 redis==4.3.5 jinja2==3.1.2

COPY ./src /app

WORKDIR /app

EXPOSE 8000

CMD ["uvicorn", "api:app", "--host", "0.0.0.0"]