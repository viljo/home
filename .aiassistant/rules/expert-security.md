# Security Expert Review Guidelines

When conducting security review, check for:

## Static Analysis
- Run bandit security scanner
- Run ruff with security rules enabled
- Review all findings and severity levels

## Secrets Management
- No hardcoded credentials or API keys?
- Secrets encrypted (Ansible Vault for Ansible projects)?
- Secrets files in .gitignore?
- Environment variables used for sensitive data?

## Authentication & Authorization
- OAuth implemented correctly?
- Proper authentication on all protected endpoints?
- Authorization checks in place?
- Session management secure?

## OWASP Top 10 Vulnerabilities
Check for:
- SQL injection (use parameterized queries, ORMs)
- XSS (sanitize inputs, escape outputs)
- Command injection (avoid shell=True, validate inputs)
- Path traversal (validate file paths)
- Insecure deserialization
- Broken authentication
- Sensitive data exposure
- XML External Entities (XXE)
- Broken access control
- Security misconfiguration

## API Security
- Input validation on all endpoints?
- Rate limiting implemented?
- Proper error handling (don't leak info)?
- CORS configured correctly?

## Dependencies
- Known vulnerabilities in dependencies?
- Dependencies up to date?
- Minimal dependency footprint?

## Container Security
- Non-root users in containers?
- Minimal base images?
- No secrets in container images?
