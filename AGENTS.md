# Agent Guidelines

This repository contains personal dotfiles for Ghostty, ZSH, Git, NPM, and NeoVim configurations.

## Build/Test/Lint Commands
No build/test/lint commands - this is a configuration repository. Validate by symlinking with `stow`.

## Code Style

### Lua (NeoVim config)
- 2 spaces for indentation (tabs expanded to spaces)
- Use double quotes for strings
- Add descriptive comments aligned with code
- Structure: `lua/gilhardl/{core,plugins}/` - core for vim settings, plugins for lazy.nvim configs
- Plugin configs return lazy.nvim spec tables with priority, config functions
- Use `vim.opt`, `vim.keymap`, `vim.g` for configuration
- Keymaps include `desc` field for which-key integration

### Shell Scripts (ZSH)
- Follow existing `.zshrc` structure with sections commented
- Use `source <()` for command substitution with external tools

### Configuration Files
- Git: Simple key=value pairs under `[user]` sections
- Ghostty: Simple key = value format
- NPM: Standard `.npmrc` format

## File Organization
Use `stow` for symlinking - each tool has its own directory (ghostty/, git/, npm/, nvim/, zsh/) containing the dotfile structure to be symlinked to `$HOME`.
