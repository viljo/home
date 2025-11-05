# Development Standards and Preferences

## General Workflow
- Work independently through implementation and testing cycles before presenting results
- Minimize feedback rounds - concentrate all feedback requests to one time per iteration
- **NEVER mention that code/commits were created by AI** in commit messages, code comments, or documentation
- Always ask before pushing to remote repositories

## Change Workflow
When receiving new requirements:
1. Update the specification (ask if new input conflicts with existing spec)
2. Update the tests based on new requirements
3. Update the code to match updated tests and spec
4. Verify implementation against specification and tests

## Python Development Standards

### Package Management
- **Always use `uv`** for Python package management and virtual environments (not pip/poetry/virtualenv)
- **Use `pyproject.toml`** for project configuration
- **Minimal dependencies first** - prefer standard library solutions when possible

### Project Structure
- **Use src/ layout** for Python projects with a separate `tests/` directory for all test code
- **Always add .gitignore** to every project from the start

### Code Quality
- **Prioritize readability** unless specific performance requirements stated
- **Use ruff** for linting and code quality checks (including security rules)
- **Use bandit** for security vulnerability scanning
- Code should be clear and maintainable first, optimized second

### Logging & Configuration
- **Use loguru** for logging (not standard library logging module)
- **Use pydantic-settings** for environment configuration and .env file handling

## Architecture Principles (CRITICAL)

### Layered Architecture (STRONGLY PREFERRED)
- **Organize code into distinct layers**: presentation, business logic, data access
- **Separation of concerns**: Each component/module has a single, well-defined responsibility
- **Loose coupling**: Components are independent and communicate through well-defined interfaces
- **High cohesion**: Related functionality should be grouped together

### Design Patterns
- **Dependency injection**: Use DI patterns to improve testability and flexibility
- **Interface-based design**: Program to interfaces, not implementations
- **SOLID principles**: Follow Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion
- **Modularity**: Design code in small, reusable, independently testable modules
- **Clear boundaries**: Define clear boundaries between layers to enable parallel development
- **Refactoring-friendly**: Structure code to be easily refactored as requirements evolve

## Testing Requirements (TDD MANDATORY)

### Test-Driven Development
- **ALWAYS write unit tests FIRST** before implementation
- **Ask before implementing**: Request information needed to write comprehensive tests before starting
- Tests should be written first, then implementation to satisfy the tests

### Python Testing Setup
- **Use pytest** as the testing framework for all Python projects
- **Test directory structure**: Always create a `tests/` subfolder containing all test code
- **Pytest fixtures**: Create proper pytest fixtures in `tests/conftest.py` for reusable test components
- **Manual test script**: Create a shell script (e.g., `run_tests.sh`) for manual test runs
- **Coverage reporting**: Include pytest-cov for test coverage metrics

### IDE Test Configurations
- Create test run configurations for **VS Code** (`.vscode/settings.json`)
- Create test run configurations for **PyCharm** (`.idea/runConfigurations/`)
- Enable static code analysis in both IDEs as per CI pipeline requirements (ruff, bandit)
- Ensure tests can be run both via IDE and command line with same configuration

### GUI Application Testing (when applicable)
- **Full circle UI tests required** for all GUI applications
- Tests must include:
  - Button click simulation and interaction
  - Screenshot capture and verification
  - Visual regression testing
  - End-to-end user workflow validation
- Use pytest-qt, selenium, or playwright as appropriate

## Technology Stack Preferences

### Core Technologies
- **API Development**: FastAPI for REST API development
- **Database**: PostgreSQL as the preferred database
- **Authentication**: OAuth for authentication strategy
- **Message Queue**: NATS for async processing and message queue
- **Web Server**: nginx as reverse proxy with Let's Encrypt for SSL/TLS

### Containerization
- **Docker preferred** for containerization
- **Docker Compose** for development environments

### IDEs
- **PyCharm and VS Code** are preferred
- **Always create run/debug configurations** for both IDEs:
  - Running the main application
  - Running with different environment configurations (dev, test, prod)
  - Debugging mode with appropriate breakpoint support
  - Docker Compose integration if applicable

## Security Standards

### Security Tools
- **Use bandit** for security vulnerability scanning
- **Use ruff** with security rules enabled
- Run security checks as part of the development workflow

### Secrets Management
- **Ansible projects**: Use Ansible Vault for secrets, keep vault password in `secrets.txt` (add to .gitignore, not checked in)
- **Other projects**: Use encrypted secrets files, password/key files excluded from version control
- **NEVER commit secrets or credentials** to version control

### OWASP Top 10 Prevention
Prevent these common vulnerabilities:
- SQL injection (use parameterized queries, ORMs)
- XSS (Cross-Site Scripting) - sanitize inputs, escape outputs
- Command injection (avoid shell=True, validate inputs)
- Path traversal (validate file paths)
- Insecure deserialization
- Broken authentication
- Sensitive data exposure
- XML External Entities (XXE)
- Broken access control
- Security misconfiguration

## Cross-Platform Compatibility
- **Prefer native Debian 13 components** when designing software architecture
- Even when current development target is macOS, design with Debian 13 native components in mind for portability
- **Target platforms**: macOS (ARM/Apple Silicon), Linux (x86-64), Windows (x86-64)
- Choose libraries and dependencies that support all three platforms

## Infrastructure as Code
- **Goal**: Software-defined infrastructure - all production infrastructure defined, managed, and provisioned through code
- **Use Ansible** for production infrastructure management and configuration
- **Use Proxmox** as the preferred virtualization platform for production infrastructure

## CI/CD Pipeline Requirements
- **GitLab CI/CD preferred** for continuous integration and deployment
- **CI pipeline must include** (in order):
  1. Linting (ruff)
  2. Unit testing
  3. Packaging
  4. Integration testing
  5. Security scanning (bandit, ruff security rules)

## Version Control Best Practices
- **Use semantic versioning** for all releases
- **Always ask before pushing to remote repositories** - never push without explicit confirmation
- **Do not mention AI** in commit messages, code comments, or documentation
