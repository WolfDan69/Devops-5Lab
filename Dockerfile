FROM python:3.11

COPY requirements.txt .
RUN pip install fastapi uvicorn pydantic-settings

WORKDIR /app
COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]