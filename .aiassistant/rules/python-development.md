# Python Development Standards

## Package Management
- **Always use `uv`** for Python package management and virtual environments
- Prefer `uv` commands over pip/virtualenv/poetry
- **Use `pyproject.toml`** for project configuration
- **Minimal dependencies as first choice**: Prefer standard library solutions when possible, only add dependencies when they provide significant value

## Project Structure
- **Use src/ layout** for Python projects with a separate `tests/` directory for all test code
- Always add `.gitignore` to every project from the start

## Code Quality
- **Prioritize readability** unless specific performance requirements are stated
- **Use ruff** for linting and code quality checks (including security rules)
- Code should be clear and maintainable first, optimized second
- **Use bandit** for security vulnerability scanning
- Run security checks as part of the development workflow

## Logging
- **Use loguru** for logging
- Modern, easy to use, with colored output and better defaults than standard library

## Configuration Management
- **Use pydantic-settings** for environment configuration and .env file handling
- Provides type safety, validation, and multiple source support

## Version Control
- Do not mention that code, commits, or other artifacts were created by AI in commit messages, code comments, or documentation
- Always ask before pushing to remote repositories
