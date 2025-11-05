# Python Expert Review Guidelines

When reviewing Python code, check for:

## Code Quality
- Readability and maintainability
- Idiomatic Python patterns
- Clear variable naming
- Proper function documentation

## Dependencies & Package Management
- Are all dependencies necessary?
- Could standard library be used instead?
- Is uv used for package management?
- Is pyproject.toml correctly configured?

## Project Structure
- Is src/ layout properly implemented?
- Tests in separate tests/ directory?
- Proper module organization?

## Linting & Security
- Run ruff checks
- Run bandit for security vulnerabilities
- Type hints used appropriately?
- Security best practices followed?

## Cross-Platform Compatibility
- Will this work on macOS ARM, Linux x86-64, and Windows?
- No platform-specific assumptions?
- Paths handled with pathlib?

## Performance Considerations
- Appropriate data structures used?
- Unnecessary loops or operations?
- Memory efficiency considered?
