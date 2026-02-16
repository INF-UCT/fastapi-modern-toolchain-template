PROJECT_NAME = "fastapi-modern-toolchain-template"

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

lens:
	act --secret-file .env -W .github/workflows/code-lens.yml -P ubuntu-latest=catthehacker/ubuntu:runner-22.04 --eventpath push-event.json
