.PHONY: dev uv lint fmt check add add-dev remove remove-dev test sync test-clean

dev:
	uv run fastapi dev app/main.py

uv:
	uv $(ARGS)

lint:
	uv run ruff check .

fmt:
	uv run ruff format .

check:
	uv run ty check

add:
	uv add $(DEPENDENCY)

add-dev:
	uv add --dev $(DEPENDENCY)

remove:
	uv remove $(DEPENDENCY) $(ARGS)

remove-dev:
	uv remove --dev $(DEPENDENCY) $(ARGS)

test:
	uv run pytest

sync:
	uv sync

test-clean:
	rm -rf .coverage coverage.xml
