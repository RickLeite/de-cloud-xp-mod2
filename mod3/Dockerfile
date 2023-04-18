FROM alpine:3.17

RUN apk add --no-cache python3 py3-pip

RUN pip3 install --no-cache-dir fastapi==0.89.1 uvicorn==0.20.0

COPY ./src /app

EXPOSE 8000
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0"]