# Shell Configuration Backup

This directory contains backups of shell configuration files.

## Files

- **zshrc** - Zsh runtime configuration
  - Oh My Zsh setup with agnoster theme
  - Docker CLI completions
  - LM Studio CLI path

- **zprofile** - Zsh login shell configuration
  - JetBrains Toolbox scripts
  - MacPorts PATH setup
  - Homebrew environment
  - Custom aliases for navigation and system commands

## Restoration

To restore these configurations:

```bash
cp shell-config/zshrc ~/.zshrc
cp shell-config/zprofile ~/.zprofile
```

## Notes

- These are macOS-specific configurations
- Includes Oh My Zsh framework setup
- Contains various tool-specific PATH modifications (Homebrew, MacPorts, Docker, LM Studio, JetBrains)
