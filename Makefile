install:
	pip install --upgrade uv &&\
		uv sync
format:
	uv run ruff format .
lint:
	#flake8 or #pylint
test:
	#test
deploy:
	#deploy
all: install lint test deploy
