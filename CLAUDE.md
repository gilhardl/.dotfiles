# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Personal macOS dotfiles repository using GNU Stow for symlink management. Configurations for Ghostty terminal, Tmux, ZSH, Git, NPM, VSCode, and Neovim with unified TokyoNight theme across all tools.

## Validation

No build/test/lint commands - this is a configuration repository. Validate by symlinking with `stow`.

## Installation & Deployment

### Initial Setup
```bash
# Clone with submodules (required for ZSH and Tmux plugins)
git clone --recurse-submodules https://github.com/gilhardl/dotfiles.git ~/.dotfiles

# Install everything
cd ~/.dotfiles && ./install.sh

# Install with customization (prompts for name, email, website)
cd ~/.dotfiles && ./install.sh --customize
```

### Individual Component Installation
```bash
# Install Homebrew packages only
source ~/.dotfiles/homebrew/install.sh

# Symlink specific tool configs (from repo root)
stow zsh          # ZSH configuration
stow git          # Git configuration
stow tmux         # Tmux configuration
stow nvim         # Neovim configuration
stow npm          # NPM configuration
stow ghostty      # Ghostty terminal configuration

# Install VSCode settings and extensions
source ~/.dotfiles/vscode/install.sh
```

### Update Homebrew Packages
```bash
brew update && brew bundle install --cleanup --file=~/.dotfiles/homebrew/Brewfile && brew upgrade
```

## Architecture

### Stow Directory Structure
Each tool has its own directory containing the dotfile structure to be symlinked to `$HOME`:
- `ghostty/` -> `~/.config/ghostty/`
- `git/` -> `~/.gitconfig`
- `npm/` -> `~/.npmrc`
- `nvim/` -> `~/.config/nvim/`
- `tmux/` -> `~/.tmux/` and `~/.tmux.conf`
- `zsh/` -> `~/.zprofile`, `~/.zshrc`, `~/.config/zsh/`
- `vscode/` -> Handled by install.sh (symlinks to `~/Library/Application Support/Code/User/`)

**Important**: When adding new config files, place them in the appropriate tool directory with the full path structure as it should appear in `$HOME`.

### Git Submodules
ZSH and Tmux plugins are managed as git submodules:
- ZSH plugins: `zsh/.config/zsh/plugins/` (fast-syntax-highlighting, zen.zsh, zsh-autosuggestions, zsh-completions)
- Tmux plugins: `tmux/.tmux/plugins/` (tpm, tmux-themepack, vim-tmux-navigator, tmux-resurrect, tmux-continuum)

When updating submodules:
```bash
git submodule update --remote --merge
```

### Neovim Configuration Architecture
Uses [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager with a modular structure:

**Entry Point**: `nvim/.config/nvim/init.lua` loads lazy.nvim and core modules

**Core Configuration** (`lua/gilhardl/core/`):
- `options.lua` - Vim settings (line numbers, indentation, search behavior)
- `keymaps.lua` - Core keybindings (splits, tabs, navigation)

**Plugins** (`lua/gilhardl/plugins/`):
- Each plugin has its own file returning a lazy.nvim spec table
- Plugin configs include priority, dependencies, config functions, and keybindings
- Use `vim.opt`, `vim.keymap.set()`, `vim.g` for configuration
- Keymaps must include `desc` field for which-key integration

**Adding New Plugins**:
1. Create new file in `lua/gilhardl/plugins/plugin-name.lua`
2. Return lazy.nvim spec table with plugin URL and config
3. Lazy.nvim auto-loads all files in plugins directory

### ZSH Configuration Architecture
Main config file `.zshrc` sources modular configuration files from `.config/zsh/`:
- `history.zsh` - History settings
- `homebrew.zsh` - Homebrew initialization
- `fzf.zsh`, `zoxide.zsh` - Tool integrations
- `prompt.zsh` - zen.zsh prompt theme
- `alias.zsh`, `alias-finder.zsh` - Aliases and suggestions
- `completions.zsh`, `auto-suggestions.zsh`, `syntax-highlight.zsh` - Shell enhancements
- `git-commit.zsh` - Conventional commit helpers (git aliases: feat, fix, chore, docs, etc.)

### Theme System
TokyoNight theme variants are configured across tools:
- **Light theme**: TokyoNight Day (files in `ghostty/.config/ghostty/themes/light`, `tmux/.tmux/themes/light`)
- **Dark theme**: TokyoNight Storm (files in `ghostty/.config/ghostty/themes/dark`, `tmux/.tmux/themes/dark`)
- Neovim: `plugins/colorscheme.lua` with `auto-dark-mode.lua` for automatic switching

## Code Style Guidelines

### Lua (Neovim)
- 2 spaces indentation (tabs expanded to spaces)
- Double quotes for strings
- Descriptive comments aligned with code
- Use modern vim APIs: `vim.opt`, `vim.keymap.set()`, `vim.g`
- Plugin config structure:
  ```lua
  return {
    "author/plugin",
    priority = 1000,  -- if needed
    dependencies = { "dependency/plugin" },
    config = function()
      -- Plugin setup
    end,
  }
  ```

### Shell Scripts
- Follow existing `.zshrc` modular structure with commented sections
- Use `source <()` for command substitution with external tools
- Bash scripts use `#!/bin/bash` shebang

### Configuration Files
- Git: Key=value pairs under `[section]` headers
- Ghostty: `key = value` format
- NPM: Standard `.npmrc` format
- VSCode: JSONC format with comments

## Personalization

When using `--customize` flag, the install script replaces:
- Git config: Name and email in `git/.gitconfig`
- NPM config: Name, email, and website in `npm/.npmrc`

Default values to replace:
- Name: "Lucas GILHARD"
- Email: "lucas@gilhard.fr"
- Website: "http://github.com/gilhardl"

## Key Neovim Keybindings Reference

File explorer: `<leader>ee` (nvim-tree)
Fuzzy find files: `<leader>ff` (telescope)
Search text: `<leader>fs` (telescope)
Git UI: `<leader>lg` (lazygit)
Format file: `<leader>mp` (conform.nvim)
Toggle split maximize: `<leader>sm` (vim-maximizer)
LSP actions: `gd` (definition), `gr` (references), `<leader>ca` (code action)
