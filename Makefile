.PHONY: dev lint fmt check add add-dev remove remove-dev test sync help

PROJECT_NAME := fastapi-modern-toolchain-template

help:
	@echo "Available targets:"
	@echo "  dev         - Run FastAPI development server"
	@echo "  lint        - Run ruff linter"
	@echo "  fmt         - Run ruff formatter"
	@echo "  check       - Run type checker (ty)"
	@echo "  add DEPS    - Add dependency (e.g., make add DEPS=requests)"
	@echo "  add-dev     - Add dev dependency"
	@echo "  remove      - Remove dependency"
	@echo "  remove-dev  - Remove dev dependency"
	@echo "  test        - Run pytest"
	@echo "  sync        - Sync dependencies with uv"

dev:
	uv run fastapi dev app/main.py

lint:
	uv run ruff check .

fmt:
	uv run ruff format .

check:
	uv run ty check

add:
	uv add $(DEPS)

add-dev:
	uv add --dev $(DEPS)

remove:
	uv remove $(DEPS)

remove-dev:
	uv remove --dev $(DEPS)

test:
	uv run pytest

sync:
	uv sync