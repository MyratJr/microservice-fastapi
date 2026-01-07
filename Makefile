install:
	pip install --upgrade uv &&\
		uv sync
format:
	uv run ruff format .
lint:
	uv run ruff check .
test:
	uv run python -m pytest -vv --cov=mylib --cov=main
build:
	#build container
deploy:
	#deploy
all: install format lint test build deploy
