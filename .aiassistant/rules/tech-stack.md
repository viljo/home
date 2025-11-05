# Technology Stack Preferences

## API Development
- **Use FastAPI** for REST API development

## Database
- **Use PostgreSQL** as the preferred database

## Authentication
- **Use OAuth** for authentication strategy

## Containerization
- **Docker preferred** for containerization
- **Docker Compose** for development environments

## Networking & Load Balancing
- **Use nginx** as the preferred reverse proxy and web server
- **Use Let's Encrypt** for SSL/TLS certificate management

## Async Processing & Message Queue
- **Use NATS** for message queue and async processing

## Development Environment
- **IDEs**: PyCharm and Visual Studio Code (.vscode) are preferred
- **Development setup**: Use Docker Compose for local development environments

## IDE Run Configurations
Always create run/debug configurations for both IDEs:
- **VS Code**: Create `launch.json` in `.vscode/` for running and debugging the application
- **PyCharm**: Create run configurations in `.idea/runConfigurations/` for running and debugging the application
- Include configurations for:
  - Running the main application
  - Running with different environment configurations (dev, test, prod)
  - Debugging mode with appropriate breakpoint support
  - Docker Compose integration if applicable
- Ensure configurations use the same environment variables and settings as production

## Release & Versioning
- **Use semantic versioning** for all releases
