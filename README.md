# Fastapi Modern Toolchain Template

This repository provides a template for setting up a modern Python development environment using `FastAPI`, `uv`, `ruff`, `ty`, `pytest`.

## Branches

- `main`: The main branch containing the base version of the project.
- `sonarqube`: A branch dedicated to SonarQube integration and configuration.

- `sonarqube-local`: A branch dedicated to SonarQube integration and configuration with local setup using `act` to run github actions locally.

## Requirements

- Python 3.12 or higher

- [uv](https://docs.astral.sh/uv/) for package management and general project setup

- [GNU Make](https://www.gnu.org/software/make/) for build automation

- [Act](https://github.com/nektos/act) for running GitHub Actions locally

## Install Act

```bash
  curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
```

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

## Run SonarQube Locally Using Act

```bash
  ./run-sonar.sh
```
