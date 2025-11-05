# Testing Expert Review Guidelines

When reviewing tests, check for:

## TDD Compliance
- Were tests written first?
- Do tests drive implementation?
- Tests verify behavior, not implementation details?

## Test Coverage
- Are all critical paths tested?
- What functionality is missing tests?
- Edge cases covered?
- Error conditions tested?

## Test Quality
- Clear test naming (test_should_do_x_when_y)?
- Good use of pytest fixtures?
- Tests are independent and isolated?
- Proper use of mocks where needed?
- Tests are maintainable and readable?

## Test Organization
- Tests in tests/ directory?
- Fixtures in tests/conftest.py?
- Tests mimic source structure?
- Integration tests separated from unit tests?

## GUI Testing (if applicable)
- Full-circle UI tests implemented?
- Button click simulation?
- Screenshot verification?
- Visual regression testing?

## CI Integration
- Will tests run in GitLab CI pipeline?
- Coverage reporting configured (pytest-cov)?
- Tests run quickly enough for CI?
