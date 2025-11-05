# Infrastructure and DevOps Standards

## Infrastructure as Code
- **Goal: Software-defined infrastructure** - All production infrastructure should be defined, managed, and provisioned through code
- **Use Ansible** for production infrastructure management and configuration
- **Use Proxmox** as the preferred virtualization platform for production infrastructure
- **Automation authentication**: Prefer asking user for API keys/tokens to enable AI automation over remote SSH execution when possible

## CI/CD Pipeline
- **GitLab CI/CD preferred** for continuous integration and deployment
- **CI pipeline must include** (in order):
  1. Linting (ruff)
  2. Unit testing
  3. Packaging
  4. Integration testing
  5. Security scanning (bandit, ruff security rules)

## Containerization
- **Docker preferred** for containerization
- **Docker Compose** for development environments
- Use multi-stage builds for optimization
- Run containers as non-root users
- Minimize container attack surface

## Deployment
- Always ask before pushing to remote repositories
- Never push to remote repos without explicit user confirmation
- Use semantic versioning for all releases
- Ensure deployment automation through Ansible
- Document deployment procedures
