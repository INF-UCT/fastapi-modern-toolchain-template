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

## Setup Github Actions for SonarQube

1. Identify the `.env.example` file.
2. Create a copy of the `.env.example` file and rename it to `.env`.
3. Complete the `SONAR_TOKEN` and `SONAR_HOST_URL` values in the `.env` file.

4. Go to the repository settings on GitHub, navigate to "Secrets and variables" > "Actions", and add the following secrets:

   - `SONAR_TOKEN`: Your SonarQube authentication token.
   - `SONAR_HOST_URL`: The URL of your SonarQube server.

5. Done!. The Github Actions will now be able to access the SonarQube server using the provided secrets.

## How to use this Template?

This template includes three branches. If you want to use the base setup without SonarQube integration, you can simply use the `main` branch. If you want to include SonarQube integration, you can use the `sonarqube` branch.
