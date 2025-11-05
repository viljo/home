# AI Assistant Configuration

Universal AI assistant configuration for **Claude Code**, **PyCharm AI Assistant**, **Cursor AI**, and **GitHub Copilot**.

## 🚀 Supported AI Assistants

| AI Assistant | Configuration Files | Status |
|--------------|-------------------|--------|
| **Claude Code** | `.claude.md`, `.claude/commands/` | ✅ Full Support |
| **PyCharm AI** | `.aiassistant/rules/` | ✅ Full Support (2025.2+) |
| **Cursor AI** | `.cursorrules`, `.cursor/rules/` | ✅ Full Support |
| **GitHub Copilot** | `.github/copilot-instructions.md` | ✅ Full Support |

## 📦 Installation

### Install to Home Directory (Global)

Install configuration globally to your home directory:

```bash
./install.sh
```

This installs:
- Claude Code → `~/.claude.md` and `~/.claude/commands/`
- PyCharm AI → `~/.aiassistant/rules/`
- Cursor AI → `~/.cursorrules` and `~/.cursor/rules/`
- GitHub Copilot → `~/.github/copilot-instructions.md`

### Install to Specific Project

Install rules to a specific project:

```bash
./install.sh /path/to/your/project
```

This installs AI rules to the project directory for use with all supported assistants.

## 🎯 Using with Different AI Assistants

### Claude Code

After installation, use expert review commands with `/` prefix:

**Expert Review Agents:**
- `/review-python` - Python stack expert (uv, ruff, bandit, loguru)
- `/review-fastapi` - FastAPI expert (OAuth, PostgreSQL, pydantic)
- `/review-tests` - Test engineer (TDD, pytest, coverage)
- `/review-matlab` - MATLAB expert (vectorization, numerical analysis)
- `/review-infrastructure` - Infrastructure architect (Ansible, Proxmox)
- `/review-cicd` - CI/CD pipeline expert (GitLab CI/CD)
- `/review-containers` - Container & networking (Docker, nginx, NATS)
- `/review-architecture` - Cross-platform architect (macOS/Linux/Windows)
- `/review-security` - Security auditor (bandit, OWASP, secrets)
- `/review-geodesy` - Geodesy expert (coordinate systems, Swedish systems)
- `/review-ui` - UI/UX expert (Qt, cross-platform GUI)

### PyCharm AI Assistant

**Requirements**: PyCharm 2025.2+ with AI Assistant plugin

Use `@rule` syntax in AI chat:

**Core Development Rules:**
- `@workflow` - General development workflow
- `@python-development` - Python standards (uv, ruff, bandit)
- `@architecture` - Architecture principles (layered, SOLID)
- `@testing` - Testing standards (TDD, pytest)
- `@tech-stack` - Technology stack (FastAPI, PostgreSQL, Docker)
- `@security` - Security standards (OWASP, secrets management)
- `@infrastructure` - Infrastructure/DevOps (Ansible, Proxmox)

**Expert Review Rules:**
- `@expert-python` - Python code review checklist
- `@expert-testing` - Testing review checklist
- `@expert-security` - Security audit checklist
- `@expert-fastapi` - FastAPI implementation review
- `@expert-infrastructure` - Infrastructure code review

**Usage Example:**
```
@python-development @security Review this authentication code for security issues
```

**Configure Rules:**
1. Settings → Tools → AI Assistant → Rules
2. Rules auto-load from `.aiassistant/rules/`
3. Apply by file patterns (e.g., `*.py`, `src/**`)

### Cursor AI

**Automatic**: Rules are automatically loaded from:
- `.cursorrules` (legacy format, still supported)
- `.cursor/rules/*.mdc` (new format with frontmatter)

**Available Rules:**
- `python-development.mdc` - Python standards
- `testing.mdc` - TDD and testing requirements
- `architecture.mdc` - Architecture principles
- `security.mdc` - Security standards

Cursor AI will automatically apply these rules to all AI interactions within the project.

### GitHub Copilot

**Automatic**: Instructions are automatically loaded from:
- `.github/copilot-instructions.md` - Main instructions (all files)
- `.github/instructions/*.instructions.md` - Path-scoped instructions

**Path-Scoped Instructions:**
- `python.instructions.md` - Applies to `**/*.py` files
- `testing.instructions.md` - Applies to `**/tests/**/*.py` files
- `security.instructions.md` - Applies to all code files

GitHub Copilot will automatically apply relevant instructions based on the file you're working on.

## 🛠️ Development Philosophy

This configuration emphasizes:

- **Test-Driven Development (TDD)** - Tests first, always
- **Layered Architecture** - Separation of concerns, SOLID principles
- **Cross-Platform Compatibility** - macOS ARM, Linux x86-64, Windows
- **Infrastructure as Code** - Ansible + Proxmox
- **Security-First** - Automated scanning, OWASP Top 10 prevention
- **Minimal Dependencies** - Prefer standard library
- **Agile-Friendly** - Iterative development, clear boundaries

## 📚 Tech Stack

- **Language**: Python with `uv` package management
- **API**: FastAPI with OAuth authentication
- **Database**: PostgreSQL
- **Testing**: pytest with fixtures and coverage
- **Linting**: ruff (with security rules)
- **Security**: bandit for vulnerability scanning
- **Containers**: Docker + Docker Compose
- **CI/CD**: GitLab CI/CD (lint → test → package → integration → security)
- **Infrastructure**: Ansible + Proxmox
- **Message Queue**: NATS
- **Reverse Proxy**: nginx + Let's Encrypt
- **Logging**: loguru
- **Config**: pydantic-settings
- **IDEs**: PyCharm and VS Code (with run/debug configs)

## 🔄 Updating

To update after pulling changes:

```bash
git pull
./install.sh              # For home directory
./install.sh <project>    # For specific project
```

## 📋 Version Requirements

| Tool | Minimum Version |
|------|----------------|
| **Claude Code** | Latest recommended |
| **PyCharm** | 2025.2+ (for AI Assistant Project Rules) |
| **Cursor AI** | Latest recommended |
| **GitHub Copilot** | Latest (supports .github/copilot-instructions.md) |
| **VS Code** | Latest with Copilot extension |

## 🗂️ Repository Structure

```
.
├── .aiassistant/rules/          # PyCharm AI Assistant rules
│   ├── workflow.md
│   ├── python-development.md
│   ├── architecture.md
│   ├── testing.md
│   ├── tech-stack.md
│   ├── security.md
│   ├── infrastructure.md
│   ├── expert-python.md
│   ├── expert-testing.md
│   ├── expert-security.md
│   ├── expert-fastapi.md
│   └── expert-infrastructure.md
├── .claude/commands/            # Claude Code expert agents
│   ├── review-python.md
│   ├── review-fastapi.md
│   ├── review-tests.md
│   ├── review-matlab.md
│   ├── review-infrastructure.md
│   ├── review-cicd.md
│   ├── review-containers.md
│   ├── review-architecture.md
│   ├── review-security.md
│   ├── review-geodesy.md
│   └── review-ui.md
├── .cursor/rules/               # Cursor AI rules (new format)
│   ├── python-development.mdc
│   ├── testing.mdc
│   ├── architecture.mdc
│   └── security.mdc
├── .github/
│   ├── copilot-instructions.md  # GitHub Copilot main instructions
│   └── instructions/            # Path-scoped instructions
│       ├── python.instructions.md
│       ├── testing.instructions.md
│       └── security.instructions.md
├── .claude.md                   # Claude Code global preferences
├── .cursorrules                 # Cursor AI rules (legacy format)
├── .gitignore
├── install.sh                   # Installation script
└── README.md
```

## 🤝 Contributing

Feel free to customize these rules for your own projects. This configuration is designed to be modular and extensible.

## 📄 License

These configuration files are provided as-is for personal and professional use.
