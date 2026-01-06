install:
	pip install --upgrade uv &&\
		uv sync
format:
	uv run ruff format .
lint:
	uv run ruff check .
test:
	#test
build:
	#build container
deploy:
	#deploy
all: install lint test deploy
