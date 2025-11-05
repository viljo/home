---
applyTo:
  - "**/*.py"
  - "**/Dockerfile"
  - "**/*.yml"
  - "**/*.yaml"
---

# Security Instructions

## Mandatory Security Checks
- Run bandit on all Python code
- Run ruff with security rules enabled
- NEVER commit secrets, API keys, or credentials
- Use environment variables for sensitive data

## Secrets Management
- Ansible projects: Use Ansible Vault, password in secrets.txt (gitignored)
- Other projects: Encrypted secrets files only
- Check .gitignore includes secrets files

## OWASP Top 10 Prevention

### SQL Injection
- Use parameterized queries or ORMs (SQLAlchemy, etc.)
- Never concatenate user input into SQL queries

### XSS Prevention
- Sanitize all user inputs
- Escape outputs properly
- Use template engines with auto-escaping

### Command Injection
- Never use `shell=True` in subprocess calls
- Validate and sanitize all inputs to system commands
- Use subprocess with list arguments

### Authentication & Authorization
- Implement OAuth for authentication
- Verify authentication on all protected endpoints
- Check authorization before data access
- Use secure session management

### Other Vulnerabilities
- Validate file paths (prevent path traversal)
- Avoid insecure deserialization (pickle)
- Implement rate limiting on APIs
- Use HTTPS/TLS everywhere (Let's Encrypt)
- Keep dependencies updated
- Regular security scans in CI/CD
