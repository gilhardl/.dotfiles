# dotfiles

This repository contains my personal dotfiles to configure:

- Ghostty - Terminal
- ZSH - Shell
- Git - Version control
- NPM - Node packages manager
- NeoVim - Text editor

## Requirements

- [homebrew](https://brew.sh/)
- [stow](https://www.gnu.org/software/stow/)

## Installation

Clone the repository:

```sh
git clone --recurse-submodules https://github.com/gilhardl/dotfiles.git ~/.dotfiles
```

Install dotfiles:

```sh
./install.sh
```

> NOTE: The install script will ask for your name, email, and website to customize the dotfiles.

## What's Inside

### Ghostty

- [`.config/ghostty/config`](ghostty/.config/ghostty/config) - Ghostty configuration

### ZSH

#### Core Files

- [`.zprofile`](zsh/.zprofile) - Environment variables (SHELL, EDITOR)
- [`.zshrc`](zsh/.zshrc) - Main ZSH startup script that sources all configuration modules

#### Configuration Modules

- [`history.zsh`](zsh/.config/zsh/history.zsh) - History settings (10k entries, deduplication)
- [`homebrew.zsh`](zsh/.config/zsh/homebrew.zsh) - Homebrew package manager initialization
- [`fzf.zsh`](zsh/.config/zsh/fzf.zsh) - [fzf](https://github.com/junegunn/fzf) fuzzy finder integration
- [`zoxide.zsh`](zsh/.config/zsh/zoxide.zsh) - [zoxide](https://github.com/ajeetdsouza/zoxide) smarter cd command
- [`prompt.zsh`](zsh/.config/zsh/prompt.zsh) - [zen.zsh](https://github.com/cybardev/zen.zsh) minimalistic prompt theme
- [`alias.zsh`](zsh/.config/zsh/alias.zsh) - Comprehensive aliases (ls variants, grep, file operations, suffix aliases)
- [`alias-finder.zsh`](zsh/.config/zsh/alias-finder.zsh) - Automatically suggests existing aliases for commands
- [`completions.zsh`](zsh/.config/zsh/completions.zsh) - [zsh-completions](https://github.com/zsh-users/zsh-completions) additional completion definitions
- [`auto-suggestions.zsh`](zsh/.config/zsh/auto-suggestions.zsh) - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) command suggestions from history
- [`syntax-highlight.zsh`](zsh/.config/zsh/syntax-highlight.zsh) - [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting) real-time syntax highlighting
- [`git-commit.zsh`](zsh/.config/zsh/git-commit.zsh) - Conventional commit helpers (git aliases: feat, fix, chore, docs, etc.)

#### Plugins

Git submodules located in `.config/zsh/plugins/`:
- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting) - Syntax highlighting for commands
- [zen.zsh](https://github.com/cybardev/zen.zsh) - Minimalistic prompt theme
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Fish-like autosuggestions
- [zsh-completions](https://github.com/zsh-users/zsh-completions) - Additional completion definitions

### Git

- [`.gitconfig`](git/.gitconfig) - Git configuration

### NPM

- [`.npmrc`](npm/.npmrc) - NPM configuration

### NeoVim

NeoVim configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager, organized into core settings and plugins.

#### Core Configuration

- [`.config/nvim/init.lua`](nvim/.config/nvim/init.lua) - Entry point that loads lazy.nvim and core modules
- [`core/options.lua`](nvim/.config/nvim/lua/gilhardl/core/options.lua) - Editor settings (line numbers, indentation, search, theme)
- [`core/keymaps.lua`](nvim/.config/nvim/lua/gilhardl/core/keymaps.lua) - Core keybindings (splits, tabs, basic navigation)

#### UI & Navigation

- [`plugins/colorscheme.lua`](nvim/.config/nvim/lua/gilhardl/plugins/colorscheme.lua) - [Tokyo Night](https://github.com/folke/tokyonight.nvim) theme
- [`plugins/auto-dark-mode.lua`](nvim/.config/nvim/lua/gilhardl/plugins/auto-dark-mode.lua) - [auto-dark-mode](https://github.com/f-person/auto-dark-mode.nvim) automatic light/dark mode switching
- [`plugins/alpha.lua`](nvim/.config/nvim/lua/gilhardl/plugins/alpha.lua) - [alpha-nvim](https://github.com/goolord/alpha-nvim) startup dashboard
- [`plugins/bufferline.lua`](nvim/.config/nvim/lua/gilhardl/plugins/bufferline.lua) - [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) buffer/tab line
- [`plugins/lualine.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lualine.lua) - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) statusline with lazy.nvim updates
- [`plugins/nvim-tree.lua`](nvim/.config/nvim/lua/gilhardl/plugins/nvim-tree.lua) - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) file explorer (`<leader>ee`)
- [`plugins/telescope.lua`](nvim/.config/nvim/lua/gilhardl/plugins/telescope.lua) - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) fuzzy finder for files, text, git (`<leader>ff`, `<leader>fs`)
- [`plugins/which-key.lua`](nvim/.config/nvim/lua/gilhardl/plugins/which-key.lua) - [which-key.nvim](https://github.com/folke/which-key.nvim) keybinding hints (500ms timeout)
- [`plugins/vim-maximizer.lua`](nvim/.config/nvim/lua/gilhardl/plugins/vim-maximizer.lua) - [vim-maximizer](https://github.com/szw/vim-maximizer) toggle split maximization (`<leader>sm`)

#### Editing & Code Quality

- [`plugins/treesitter.lua`](nvim/.config/nvim/lua/gilhardl/plugins/treesitter.lua) - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax highlighting, indentation, autotagging
- [`plugins/autopairs.lua`](nvim/.config/nvim/lua/gilhardl/plugins/autopairs.lua) - [nvim-autopairs](https://github.com/windwp/nvim-autopairs) automatic bracket/quote pairing
- [`plugins/surround.lua`](nvim/.config/nvim/lua/gilhardl/plugins/surround.lua) - [nvim-surround](https://github.com/kylechui/nvim-surround) manipulate surrounding characters
- [`plugins/comment.lua`](nvim/.config/nvim/lua/gilhardl/plugins/comment.lua) - [Comment.nvim](https://github.com/numToStr/Comment.nvim) smart commenting with treesitter context
- [`plugins/formatting.lua`](nvim/.config/nvim/lua/gilhardl/plugins/formatting.lua) - [conform.nvim](https://github.com/stevearc/conform.nvim) format-on-save (prettier, stylua, black) (`<leader>mp`)
- [`plugins/linting.lua`](nvim/.config/nvim/lua/gilhardl/plugins/linting.lua) - [nvim-lint](https://github.com/mfussenegger/nvim-lint) linting on save/change (eslint_d, pylint) (`<leader>l`)

#### LSP & Completion

- [`plugins/lsp/mason.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lsp/mason.lua) - [mason.nvim](https://github.com/williamboman/mason.nvim) LSP/formatter/linter installer
- [`plugins/lsp/lsp-config.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lsp/lsp-config.lua) - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) LSP configurations (ts_ls, lua_ls, pyright, etc.) with keybindings (`gd`, `gr`, `<leader>ca`)
- [`plugins/nvim-cmp.lua`](nvim/.config/nvim/lua/gilhardl/plugins/nvim-cmp.lua) - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) autocompletion with LSP, snippets, buffer, path sources

#### Git Integration

- [`plugins/gitsigns.lua`](nvim/.config/nvim/lua/gilhardl/plugins/gitsigns.lua) - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) git decorations and hunk operations (`<leader>hs`, `<leader>hp`, `]h`)
- [`plugins/lazygit.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lazygit.lua) - [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) lazygit integration (`<leader>lg`)

#### Utilities

- [`plugins/init.lua`](nvim/.config/nvim/lua/gilhardl/plugins/init.lua) - Minimal plugins (plenary.nvim, vim-tmux-navigator)
- [`plugins/auto-session.lua`](nvim/.config/nvim/lua/gilhardl/plugins/auto-session.lua) - [auto-session](https://github.com/rmagatti/auto-session) session management (`<leader>wr`, `<leader>ws`)
- [`plugins/todo-comments.lua`](nvim/.config/nvim/lua/gilhardl/plugins/todo-comments.lua) - [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) highlight and navigate TODO comments (`]t`, `[t`, `<leader>ft`)
- [`plugins/trouble.lua`](nvim/.config/nvim/lua/gilhardl/plugins/trouble.lua) - [trouble.nvim](https://github.com/folke/trouble.nvim) diagnostics/quickfix list (`<leader>xw`, `<leader>xd`, `<leader>xt`)

## License

This project is open-sourced under MIT License.

See [LICENSE.txt](LICENSE.txt).
