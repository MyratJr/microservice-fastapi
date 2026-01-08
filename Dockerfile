FROM python:3.8.13-slim-buster

RUN mkdir -p /app
COPY . /app/
WORKDIR /app
RUN pip install uv
RUN uv sync
EXPOSE 8000
CMD [ "uv", "run", "python", "main.py" ]