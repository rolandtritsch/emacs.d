# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a literate programming-based Emacs configuration using Org-mode files with embedded Emacs Lisp code. Configuration is organized in numbered modules in the `roland/` directory, each as a `.org` file containing documentation and code blocks.

## Architecture

### Configuration Loading

Entry point: `init.el` → `roland/00-roland.org` (orchestrator) → individual module files

The `00-roland.org` file loads all other configuration modules. Modules can be enabled/disabled by commenting out their `org-babel-load-file` lines.

### Module Organization

Configuration follows a numbered convention:
- **00-11**: Core/foundation (basic settings, package management)
- **20-27**: General packages and UI enhancements
- **30-40**: Development tools and AI assistants
- **60-68**: Language-specific configurations

### Package Management

Two approaches are used:

1. **ELPA/MELPA** (primary): Managed via `use-package` with `:ensure t`. Packages auto-install on first load. Archives configured in `11-use-package.org`.

2. **Git submodules** (`packages/` directory): Used for packages not in ELPA or requiring local modifications (e.g., copilot.el, codeium.el, mermaid-mode).

### Code Generation

All `.el` files in `roland/` are **generated** from `.org` files via `org-babel-load-file`. Never edit `.el` files directly - they're gitignored. Edit the corresponding `.org` file instead.

## Making Configuration Changes

### Editing Configuration

1. Edit the relevant `.org` file in `roland/`
2. Changes take effect immediately via org-babel tangling or on next Emacs restart
3. No build step required - configuration is dynamically loaded

### Enabling/Disabling Features

To enable/disable an entire module:
- Edit `roland/00-roland.org`
- Comment/uncomment the corresponding `org-babel-load-file` line
- Restart Emacs

Currently active modules: basic, use-package, general-packages, org-mode, swiper, general-coding, mermaid, lsp, claude, elisp, scala, python, typescript

Available but disabled: copilot, codeium, supermaven, aider, treemacs, mastodon, elixir, go, rust, haskell, plantuml

### Adding New Packages

**From ELPA/MELPA:**
Add to appropriate `.org` file:
```elisp
(use-package package-name
  :ensure t
  :config ...)
```

**From git:**
Add as submodule:
```bash
git submodule add <repo-url> packages/<package-name>
git submodule update --init --recursive
```

Then configure in `.org` file with `:load-path "packages/package-name"`.

## Key Bindings Convention

All custom key bindings use the `C-z` prefix:
- `C-z m` - Magit (git operations)
- `C-z o` - Org-mode commands
- `C-z c` - Claude Code / coding tools
- `C-z l` - LSP mode commands
- `C-z e` - Elixir/ExUnit (when enabled)
- `C-z r` - Code review tools

## Development Workflow

### For This Configuration

No traditional build system. To verify changes:
1. Restart Emacs to reload configuration
2. Check `*Messages*` buffer for errors
3. Use `M-x eval-buffer` in the tangled `.el` file for quick testing

### Git Operations

- Uses Magit (`C-z m s` for status) with Forge for GitHub integration
- Forge automatically copies PR URLs to clipboard after creation
- 12 git submodules in `packages/` - run `git submodule update --init --recursive` after clone

## Language Support

**Currently Active:**
- Emacs Lisp: Built-in support with eldoc
- Scala: LSP via Metals server
- Python: Elpy package
- TypeScript: Tide mode with flycheck

**Available (commented out):**
- Elixir: LSP + ExUnit + Mix integration
- Go: go-mode with LSP
- Rust: rust-mode with LSP
- Haskell: haskell-mode with LSP

To enable a language, uncomment its line in `00-roland.org` and install required external tools (LSP servers, compilers).

## LSP Mode

Active for supported languages. Configured to:
- Auto-format on save (`lsp-format-buffer`)
- Organize imports on save
- Enable semantic tokens
- Use `xref-find-definitions` for navigation

LSP requires external language servers installed on system (e.g., `metals` for Scala, `pyright` for Python).

## AI Assistants

Multiple AI assistants are configured but only Claude Code is currently active. Others available:
- GitHub Copilot (36-copilot.org)
- Codeium (37-codeium.org)
- Supermaven (38-supermaven.org)
- Aider (39-aider.org)

Claude Code integration uses the `claude-code-ide` package installed via `:vc` (Emacs 29+ VC integration).

## Important Files

- `init.el` - Entry point (minimal bootstrap)
- `roland/00-roland.org` - Master orchestrator
- `roland/10-basic.org` - Core Emacs settings, display-buffer rules, backup strategy
- `roland/11-use-package.org` - Package manager configuration
- `roland/30-general-coding.org` - Magit, Forge, Flycheck, Company, Vterm
- `roland/33-lsp.org` - LSP mode configuration
- `roland/40-claude.org` - Claude Code IDE integration

## Special Features

### Display Buffer Rules

Custom rules in `10-basic.org` control window placement for:
- `*org-agenda*` - Fixed bottom window
- `*gptel*` - Right side window
- `*vterm*` - Bottom window
- Git commit buffers - Current window

### Backup Strategy

All backup files go to `~/.emacs.d.saves` directory (configured in `10-basic.org`).

### Auto-formatting

Trailing whitespace deleted on save for all modes except `fundamental-mode` and `makefile-mode`.

## Troubleshooting

**Configuration not loading:**
- Check `*Messages*` buffer for errors
- Verify `.org` file syntax (proper code block delimiters)
- Ensure required packages are installed (`M-x package-list-packages`)

**Package installation fails:**
- Refresh package list: `M-x package-refresh-contents`
- Check MELPA connectivity
- For submodules: `git submodule update --init --recursive`

**LSP not working:**
- Verify language server is installed on system
- Check LSP logs: `M-x lsp-workspace-show-log`
- Restart LSP: `M-x lsp-workspace-restart`
