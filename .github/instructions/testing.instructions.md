---
applyTo:
  - "**/tests/**/*.py"
  - "**/test_*.py"
  - "**/*_test.py"
---

# Testing Instructions

## Test-Driven Development (MANDATORY)
- Tests must be written BEFORE implementation code
- Ask for requirements clarification before writing tests
- Each test should verify one specific behavior

## Test Structure
- Use pytest framework exclusively
- Fixtures in `tests/conftest.py`
- Clear test names: `test_should_do_x_when_y`
- Arrange-Act-Assert pattern

## Test Coverage Requirements
- All public APIs must have tests
- Edge cases and error conditions required
- Use pytest-cov to verify coverage
- Minimum 80% coverage (aim for 90%+)

## GUI Tests (when applicable)
For GUI applications:
- Button click simulation required
- Screenshot verification required
- Use pytest-qt for Qt apps
- Use playwright/selenium for web apps
- Test full user workflows end-to-end

## Test Quality
- Tests should be independent (no shared state)
- Use mocks for external dependencies
- Fast unit tests (< 1 second each)
- Slower integration tests in separate directory
