# Testing Standards

## Test-Driven Development Philosophy
- **Test-Driven Development (TDD)**: Always write unit tests
- **Ask before implementing**: Request information needed to write comprehensive tests before starting implementation
- Tests should be written first, then implementation to satisfy the tests

## Change Workflow
When receiving user input:
1. Update the specification (ask user if new input conflicts with existing spec)
2. Update the tests based on new requirements
3. Update the code to match updated tests and spec
4. Verify implementation against specification and tests

## Python Testing Setup
- **Use pytest** as the testing framework for all Python projects
- **Test directory structure**: Always create a `tests/` subfolder containing all test code
- **Pytest fixtures**: Create proper pytest fixtures in `tests/conftest.py` for reusable test components
- **Use fixtures during development**: Run tests using pytest fixtures to ensure consistent test environments
- **Manual test script**: Create a shell script (e.g., `run_tests.sh`) for manual test runs with appropriate pytest arguments

## IDE Test Configurations
- Create test run configurations for **VS Code** (`.vscode/settings.json`)
- Create test run configurations for **PyCharm** (`.idea/runConfigurations/`)
- Enable static code analysis in both IDEs as per CI pipeline requirements:
  - **ruff** for linting and code quality checks
  - **bandit** for security scanning
  - Configure IDE to run these checks automatically on save or before test runs
- **Test execution**: Ensure tests can be run both via IDE and command line with the same configuration
- **Coverage reporting**: Include pytest-cov for test coverage metrics

## GUI Application Testing
- **Full circle UI tests required** for all GUI applications
- Tests must include:
  - Button click simulation and interaction
  - Screenshot capture and verification
  - Visual regression testing where applicable
  - End-to-end user workflow validation
- Use appropriate UI testing frameworks (e.g., pytest-qt, selenium, playwright, etc.)
