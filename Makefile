install:
	pip install --upgrade uv &&\
		uv sync
format:
	uv run ruff format .
lint:
	uv run ruff check .
test:
	#test
deploy:
	#deploy
all: install lint test deploy
