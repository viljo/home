# Security Standards

## Security Tools
- **Use bandit** for security vulnerability scanning
- **Use ruff** with security rules enabled
- Run security checks as part of the development workflow

## Secrets Management
- **Ansible projects**: Use Ansible Vault for secrets, keep vault password in `secrets.txt` (add to .gitignore, not checked in)
- **Other projects**: Use similar approach with encrypted secrets files and password/key files excluded from version control
- Never commit secrets or credentials to version control

## Authentication
- **Use OAuth** for authentication strategy
- Implement proper authentication and authorization checks
- Follow security best practices for API authentication

## Common Vulnerabilities
Prevent OWASP Top 10 vulnerabilities:
- SQL injection
- XSS (Cross-Site Scripting)
- Command injection
- Path traversal
- Insecure deserialization
- Broken authentication
- Sensitive data exposure
- XML External Entities (XXE)
- Broken access control
- Security misconfiguration

## Security in CI/CD
Ensure CI pipeline includes security scanning:
- Linting with security rules (ruff)
- Security vulnerability scanning (bandit)
- Dependency vulnerability checks
