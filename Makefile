install:
	pip install --upgrade uv &&\
		uv sync
format:
	uv run ruff format .
lint:
	uv run ruff check .
test:
	uv run python -m pytest -vv --cov=mylib test_logic.py
build:
	#build container
deploy:
	#deploy
all: install lint test deploy
