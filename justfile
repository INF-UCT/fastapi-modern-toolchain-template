PROJECT_NAME := "fastapi-modern-toolchain-template"

dev:
	uv run fastapi dev app/main.py

uv ARGS="":
	uv {{ARGS}}

lint:
	uv run ruff check .

fmt:
	uv run ruff format .

check:
	uv run ty check

add DEPENDENCY:
	uv add {{DEPENDENCY}}

add-dev DEPENDENCY:
	uv add --dev {{DEPENDENCY}}

remove DEPENDENCY ARGS="":
	uv remove {{DEPENDENCY}} {{ARGS}}

remove-dev DEPENDENCY ARGS="":
	uv remove --dev {{DEPENDENCY}} {{ARGS}}

test:
	uv run pytest

sync:
	uv sync

sonar:
	bash ./run-sonar.sh

test-clean:
	rm -rf .coverage coverage.xml