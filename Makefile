install:
	pip install --upgrade uv &&\
		uv sync
format:
	uv run ruff format .
lint:
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
deploy:
	#deploy
all: install lint test deploy
