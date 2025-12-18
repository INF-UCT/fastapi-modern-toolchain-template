# Modern Python Development Toolchain Template

This repository provides a template for setting up a modern Python development environment using `FastAPI`, `uv`, `ruff`, `ty`, `pytest`.

## Branches

- `main`: The main branch containing the base version of the project.
- `sonarqube`: A branch dedicated to SonarQube integration and configuration.

## Requirements

- Python 3.12 or higher

- [Just](https://github.com/casey/just) for task management
- [uv](https://docs.astral.sh/uv/) for package management and general project setup

## Running the Project

This instructions follows the base setup of the `main` branch.

1. **Clone the Repository**:
   ```bash
   git clone https://github/INF-UCT/modern-python-toolchain-template.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
    cd modern-python-toolchain-template
    ```

3. **Ensure you have the required tools installed**:

4. **Install Dependencies**:
   ```bash
   just sync
    ```

5. **Run the Application**:
    ```bash
    just dev
    ```