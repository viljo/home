---
applyTo:
  - "**/*.py"
  - "**/pyproject.toml"
  - "**/requirements.txt"
---

# Python-Specific Instructions

## Package Management
- **ONLY use `uv`** for package management - never suggest pip, poetry, or virtualenv
- All dependencies in `pyproject.toml`
- Run tests with pytest

## Code Style
- Use ruff for linting (configured in pyproject.toml)
- Run bandit for security scanning
- Prioritize readability over cleverness

## Project Structure
- Source code in `src/` directory
- Tests in `tests/` directory with `conftest.py` for fixtures
- Never mix source and tests

## Testing
- ALWAYS write tests FIRST (TDD required)
- Use pytest fixtures from `tests/conftest.py`
- Include docstrings with examples
- Test coverage with pytest-cov

## Common Patterns
- Use loguru for logging (not standard logging)
- Use pydantic-settings for configuration
- Type hints required for public APIs
- Docstrings for all public functions/classes
