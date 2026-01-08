install:
	pip install --upgrade uv &&\
		uv sync
	uv run python -m textblob.download_corpora
format:
	uv run ruff format .
lint:
	uv run ruff check .
test:
	uv run python -m pytest -vv --cov=mylib --cov=main
build:
	docker build -t deploy-fastapi .
run:
	docker run -p 8000:8000 deploy-fastapi
deploy:
	#deploy
all: install format lint test build deploy
