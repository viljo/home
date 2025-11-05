#!/bin/bash

# Script to install AI assistant configurations
# Supports: Claude Code, PyCharm AI Assistant, Cursor AI, GitHub Copilot
#
# Usage:
#   ./install.sh              - Install to home directory (~/)
#   ./install.sh <project>    - Install to specified project directory

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$HOME}"

# If target is not home directory, it's a project installation
if [ "$TARGET_DIR" != "$HOME" ]; then
    IS_PROJECT=true
    echo "Installing to project directory: $TARGET_DIR"
else
    IS_PROJECT=false
    echo "Installing to home directory: $TARGET_DIR"
fi

echo ""
echo "╔════════════════════════════════════════╗"
echo "║  AI Assistant Configuration Installer  ║"
echo "╚════════════════════════════════════════╝"

# ============================================
# Claude Code Configuration
# ============================================
echo ""
echo "=== Claude Code Configuration ==="

# Copy .claude.md to target directory (only for home installation)
if [ "$IS_PROJECT" = false ]; then
    if [ -f "$SCRIPT_DIR/.claude.md" ]; then
        echo "Copying .claude.md..."
        cp "$SCRIPT_DIR/.claude.md" "$TARGET_DIR/.claude.md"
        echo "✓ .claude.md installed"
    else
        echo "✗ .claude.md not found in $SCRIPT_DIR"
        exit 1
    fi
fi

# Create .claude/commands directory
if [ ! -d "$TARGET_DIR/.claude/commands" ]; then
    mkdir -p "$TARGET_DIR/.claude/commands"
fi

# Copy command files
if [ -d "$SCRIPT_DIR/.claude/commands" ]; then
    echo "Copying Claude Code command files..."
    cp "$SCRIPT_DIR/.claude/commands/"*.md "$TARGET_DIR/.claude/commands/"
    echo "✓ Claude Code commands installed"
else
    echo "✗ .claude/commands directory not found"
    exit 1
fi

# ============================================
# PyCharm AI Assistant Rules
# ============================================
echo ""
echo "=== PyCharm AI Assistant Rules ==="

# Create .aiassistant/rules directory
if [ ! -d "$TARGET_DIR/.aiassistant/rules" ]; then
    mkdir -p "$TARGET_DIR/.aiassistant/rules"
fi

# Copy PyCharm AI Assistant rule files
if [ -d "$SCRIPT_DIR/.aiassistant/rules" ]; then
    echo "Copying PyCharm AI Assistant rule files..."
    cp "$SCRIPT_DIR/.aiassistant/rules/"*.md "$TARGET_DIR/.aiassistant/rules/"
    echo "✓ PyCharm AI Assistant rules installed"
else
    echo "✗ .aiassistant/rules directory not found"
    exit 1
fi

# ============================================
# Cursor AI Configuration
# ============================================
echo ""
echo "=== Cursor AI Configuration ==="

# Create .cursor/rules directory
if [ ! -d "$TARGET_DIR/.cursor/rules" ]; then
    mkdir -p "$TARGET_DIR/.cursor/rules"
fi

# Copy .cursorrules (legacy support)
if [ -f "$SCRIPT_DIR/.cursorrules" ]; then
    echo "Copying .cursorrules (legacy)..."
    cp "$SCRIPT_DIR/.cursorrules" "$TARGET_DIR/.cursorrules"
    echo "✓ .cursorrules installed"
fi

# Copy Cursor rules
if [ -d "$SCRIPT_DIR/.cursor/rules" ]; then
    echo "Copying Cursor AI rule files..."
    cp "$SCRIPT_DIR/.cursor/rules/"*.mdc "$TARGET_DIR/.cursor/rules/"
    echo "✓ Cursor AI rules installed"
else
    echo "✗ .cursor/rules directory not found"
    exit 1
fi

# ============================================
# GitHub Copilot Configuration
# ============================================
echo ""
echo "=== GitHub Copilot Configuration ==="

# Create .github directories
if [ ! -d "$TARGET_DIR/.github/instructions" ]; then
    mkdir -p "$TARGET_DIR/.github/instructions"
fi

# Copy main Copilot instructions
if [ -f "$SCRIPT_DIR/.github/copilot-instructions.md" ]; then
    echo "Copying copilot-instructions.md..."
    cp "$SCRIPT_DIR/.github/copilot-instructions.md" "$TARGET_DIR/.github/copilot-instructions.md"
    echo "✓ GitHub Copilot main instructions installed"
else
    echo "✗ copilot-instructions.md not found"
    exit 1
fi

# Copy path-scoped instructions
if [ -d "$SCRIPT_DIR/.github/instructions" ]; then
    echo "Copying GitHub Copilot path-scoped instructions..."
    cp "$SCRIPT_DIR/.github/instructions/"*.instructions.md "$TARGET_DIR/.github/instructions/"
    echo "✓ GitHub Copilot path-scoped instructions installed"
else
    echo "✗ .github/instructions directory not found"
    exit 1
fi

# ============================================
# Installation Summary
# ============================================
echo ""
echo "╔════════════════════════════════════════╗"
echo "║     Installation Complete! ✓           ║"
echo "╚════════════════════════════════════════╝"
echo ""
echo "Configuration installed to: $TARGET_DIR"
echo ""
echo "Installed configurations:"
echo "  ✓ Claude Code (.claude/commands/)"
if [ "$IS_PROJECT" = false ]; then
    echo "    - Global preferences (.claude.md)"
fi
echo "  ✓ PyCharm AI Assistant (.aiassistant/rules/)"
echo "  ✓ Cursor AI (.cursor/rules/ and .cursorrules)"
echo "  ✓ GitHub Copilot (.github/copilot-instructions.md)"
echo ""

# ============================================
# Usage Instructions
# ============================================

if [ "$IS_PROJECT" = false ]; then
    echo "=== Claude Code Commands ==="
    echo "Available slash commands:"
    ls -1 "$TARGET_DIR/.claude/commands/" | sed 's/.md$//' | sed 's/^/  \//'
    echo ""
fi

echo "=== PyCharm AI Assistant Rules ==="
echo "Use @rule in AI chat:"
ls -1 "$TARGET_DIR/.aiassistant/rules/" | sed 's/.md$//' | sed 's/^/  @/'
echo ""

echo "=== Cursor AI Rules ==="
echo "Rules automatically loaded from:"
echo "  - .cursorrules (legacy)"
echo "  - .cursor/rules/*.mdc (new format)"
ls -1 "$TARGET_DIR/.cursor/rules/" 2>/dev/null | sed 's/.mdc$//' | sed 's/^/    • /' || echo "  (no rules found)"
echo ""

echo "=== GitHub Copilot Instructions ==="
echo "Instructions automatically loaded from:"
echo "  - .github/copilot-instructions.md (main)"
echo "  - .github/instructions/*.instructions.md (path-scoped)"
ls -1 "$TARGET_DIR/.github/instructions/" 2>/dev/null | sed 's/.instructions.md$//' | sed 's/^/    • /' || echo "  (no instructions found)"
echo ""

if [ "$IS_PROJECT" = true ]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Next steps:"
    echo "  1. Open project in your IDE"
    echo "  2. AI assistants will automatically use these rules"
    echo "  3. For PyCharm: Type @rule in AI chat"
    echo "  4. For Claude Code: Use /review-* commands"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
fi

echo ""
