# Lucas's .dotfiles

Personal development environment configuration for macOS featuring a modern, cohesive setup built around Ghostty terminal, Neovim, and Tmux. This dotfiles repository provides a complete, automated installation of tools, plugins, and configurations optimized for full-stack development with Node.js, Python, and Swift.

**Key Features:**

- Automated installation via `install.sh` with Homebrew package management (60+ packages including development tools, CLI utilities, and GUI applications)
- Unified TokyoNight theme across terminal, multiplexer, and editor
- Comprehensive ZSH configuration with fuzzy finding, smart navigation, and syntax highlighting
- Fully-configured Neovim with LSP, autocompletion, formatting, and Git integration
- Persistent Tmux sessions with seamless Vim navigation
- Conventional commit helpers and development tools pre-configured
- Pre-configured runtimes (Node.js, Python, Bun, Swift) and databases (PostgreSQL, MongoDB, SQLite)

**Configured Tools:**

- **Ghostty** - Modern GPU-accelerated terminal emulator
- **Tmux** - Terminal multiplexer with session persistence
- **ZSH** - Enhanced shell with plugins and completions
- **Git** - Version control with custom configuration
- **NPM** - Node.js package manager settings
- **VSCode** - Visual Studio Code with synchronized settings, keybindings, and extensions
- **NeoVim** - Highly-customized text editor with 25+ plugins

## Requirements

- [macOS Tahoe 26.0.1](https://www.apple.com/fr/os/macos/)

## Installation

Clone the repository:

```sh
git clone --recurse-submodules https://github.com/gilhardl/dotfiles.git ~/.dotfiles
```

Install dotfiles:

```sh
cd ~/.dotfiles && ./install.sh [-c|--customize]
```

The install script will:

1. (Optional) Will prompt for your name, email, and website to personalize Git and NPM configuration files if run with `-c` or `--customize`.
2. Install Homebrew and packages (via [homebrew/install.sh](homebrew/install.sh))
3. Symlink dotfiles to your home directory using GNU Stow
4. Configure VSCode settings, keybindings, and extensions (via [vscode/install.sh](vscode/install.sh))

## What's Inside

### Packages

The [Brewfile](homebrew/Brewfile) installs the following packages via Homebrew:

#### Programming Languages & Runtimes

- **Node.js** (`node@24`) - JavaScript runtime
- **Bun** - Fast JavaScript runtime and package manager
- **Python** (`python@3`) - Python interpreter
- **Swift** - Apple's programming language

#### CLI Tools

- **fzf** - Command-line fuzzy finder
- **zoxide** - Smarter cd command with frecency tracking
- **ripgrep** - Fast search tool
- **stow** - Symbolic links manager for dotfiles
- **tree** - Display directories as trees
- **ffmpeg** - Audio and video converter/streamer
- **yt-dlp** - Download audio and video from web
- **git** - Distributed version control
- **git-lfs** - Git extension for large files
- **docker** - Container engine
- **postgresql** - SQL database system
- **mongosh** - MongoDB shell client
- **sqlite** - Lightweight SQL database
- **supabase** - Backend-as-a-service CLI
- **swift-format** - Swift code formatter
- **uv** - Fast Python package manager

#### TUI Applications

- **tmux** - Terminal multiplexer
- **neovim** - Extensible text editor
- **claude-code** - AI coding assistant (cask)
- **opencode** - Open AI coding assistant
- **lazygit** - Git TUI
- **htop** - Interactive process viewer

#### GUI Applications

##### Browsers & Media

- **Google Chrome** - Web browser (cask)
- **VLC** - Video player (cask)
- **CANAL+** - TV/movies streaming (Mac App Store)

##### Communication

- **WhatsApp Messenger** - Messaging (Mac App Store)
- **Discord** - Voice/text chat (cask)

##### AI Tools

- **Claude** - AI assistant (cask)
- **ChatGPT** - AI assistant (cask)
- **Perplexity** - AI research tool (Mac App Store)

##### Development Tools

- **Ghostty** - Modern terminal emulator (cask)
- **GitHub Desktop** - Git repository manager (cask)
- **Postman** - HTTP client (cask)
- **Visual Studio Code** - Code editor (cask)
- **Xcode** - iOS/macOS IDE (Mac App Store)
- **Swift Playgrounds** - Swift learning environment (Mac App Store)
- **SF Symbols** - Apple design resource (cask)
- **Apple Developer** - Developer documentation (Mac App Store)
- **Docker Desktop** - Docker management UI (cask)
- **UTM** - Virtual machines manager (cask)

##### Design Tools

- **Figma** - Design editor (cask)
- **Affinity Designer 2** - Vector graphics editor (Mac App Store)

##### Utilities

- **TradingView** - Stock market analysis (cask)
- **Transmission** - BitTorrent client (cask)
- **Tor Browser** - Privacy browser (cask)
- **NordVPN** - VPN service (Mac App Store)
- **Bitwarden** - Password manager (Mac App Store)
- **OnyX** - macOS maintenance utility (cask)
- **SaneSideButtons** - Mouse button utility (cask)
- **Scroll Reverser** - Mouse scroll utility (cask)

#### Fonts

- **JetBrains Mono Nerd Font** - Primary development font with icons

### Theme

Modern theme inspired by [VSCode TokyoNight Theme](https://github.com/tokyo-night/tokyo-night-vscode-theme)

- **light**: Light theme inspired by TokyoNight day color scheme

  - [Ghostty](./ghostty/.config/ghostty/themes/light)
  - [Tmux](./tmux/.tmux/themes/light)
  - [NeoVim](./nvim/.config/nvim/lua/gilhardl/plugins/colorscheme.lua)

  ![TokyoNight day theme screenshot](https://user-images.githubusercontent.com/292349/115996270-78c6c480-a593-11eb-8ed0-7d1400b058f5.png)

- **dark**: Dark theme inspired by TokyoNight moon color scheme

  - [Ghostty](./ghostty/.config/ghostty/themes/dark)
  - [Tmux](./tmux/.tmux/themes/dark)
  - [NeoVim](./nvim/.config/nvim/lua/gilhardl/plugins/colorscheme.lua)

  ![TokyoNight moon theme screenshot](https://user-images.githubusercontent.com/292349/190951628-10ba28a1-57ff-4479-8eab-47400a402242.png)

### Configuration

#### Ghostty

- [`.config/ghostty/config`](ghostty/.config/ghostty/config) - Ghostty configuration

#### Tmux

**Core Configuration**

- [`.tmux.conf`](tmux/.tmux.conf) - Tmux configuration with split navigation, mouse support, and auto-restore sessions

**Plugins**

Git submodules located in `.tmux/plugins/`:

- [tpm](https://github.com/tmux-plugins/tpm) - Tmux plugin manager
- [tmux-themepack](https://github.com/jimeh/tmux-themepack) - Powerline theme
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless navigation between vim and tmux splits
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) - Restore tmux sessions after system restart
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) - Continuous saving and automatic restore of tmux sessions

#### ZSH

**Core Configuration**

- [`.zprofile`](zsh/.zprofile) - Environment variables (SHELL, EDITOR)
- [`.zshrc`](zsh/.zshrc) - Main ZSH startup script that sources all configuration modules

**Configuration Modules**

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

**Plugins**

Git submodules located in `.config/zsh/plugins/`:

- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting) - Syntax highlighting for commands
- [zen.zsh](https://github.com/cybardev/zen.zsh) - Minimalistic prompt theme
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Fish-like autosuggestions
- [zsh-completions](https://github.com/zsh-users/zsh-completions) - Additional completion definitions

#### Git

- [`.gitconfig`](git/.gitconfig) - Git configuration

#### NPM

- [`.npmrc`](npm/.npmrc) - NPM configuration

#### VSCode

**Configuration Files**

- [`.config/vscode/settings.jsonc`](vscode/settings.jsonc) - Editor settings and preferences
- [`.config/vscode/keybindings.jsonc`](vscode/keybindings.jsonc) - Custom keyboard shortcuts
- [`.config/vscode/extensions.jsonc`](vscode/extensions.jsonc) - List of installed extensions

**Installation Script**

- [`vscode/install.sh`](vscode/install.sh) - Automated setup that:
  - Symlinks `settings.jsonc` and `keybindings.jsonc` to VSCode User directory
  - Installs all extensions from `extensions.jsonc`

#### NeoVim

NeoVim configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager, organized into core settings and plugins.

**Core Configuration**

- [`.config/nvim/init.lua`](nvim/.config/nvim/init.lua) - Entry point that loads lazy.nvim and core modules
- [`core/options.lua`](nvim/.config/nvim/lua/gilhardl/core/options.lua) - Editor settings (line numbers, indentation, search, theme)
- [`core/keymaps.lua`](nvim/.config/nvim/lua/gilhardl/core/keymaps.lua) - Core keybindings (splits, tabs, basic navigation)

**UI & Navigation**

- [`plugins/colorscheme.lua`](nvim/.config/nvim/lua/gilhardl/plugins/colorscheme.lua) - [Tokyo Night](https://github.com/folke/tokyonight.nvim) theme
- [`plugins/auto-dark-mode.lua`](nvim/.config/nvim/lua/gilhardl/plugins/auto-dark-mode.lua) - [auto-dark-mode](https://github.com/f-person/auto-dark-mode.nvim) automatic light/dark mode switching
- [`plugins/alpha.lua`](nvim/.config/nvim/lua/gilhardl/plugins/alpha.lua) - [alpha-nvim](https://github.com/goolord/alpha-nvim) startup dashboard
- [`plugins/bufferline.lua`](nvim/.config/nvim/lua/gilhardl/plugins/bufferline.lua) - [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) buffer/tab line
- [`plugins/lualine.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lualine.lua) - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) statusline with lazy.nvim updates
- [`plugins/nvim-tree.lua`](nvim/.config/nvim/lua/gilhardl/plugins/nvim-tree.lua) - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) file explorer (`<leader>ee`)
- [`plugins/telescope.lua`](nvim/.config/nvim/lua/gilhardl/plugins/telescope.lua) - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) fuzzy finder for files, text, git (`<leader>ff`, `<leader>fs`)
- [`plugins/which-key.lua`](nvim/.config/nvim/lua/gilhardl/plugins/which-key.lua) - [which-key.nvim](https://github.com/folke/which-key.nvim) keybinding hints (500ms timeout)
- [`plugins/vim-maximizer.lua`](nvim/.config/nvim/lua/gilhardl/plugins/vim-maximizer.lua) - [vim-maximizer](https://github.com/szw/vim-maximizer) toggle split maximization (`<leader>sm`)

**Editing & Code Quality**

- [`plugins/treesitter.lua`](nvim/.config/nvim/lua/gilhardl/plugins/treesitter.lua) - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax highlighting, indentation, autotagging
- [`plugins/autopairs.lua`](nvim/.config/nvim/lua/gilhardl/plugins/autopairs.lua) - [nvim-autopairs](https://github.com/windwp/nvim-autopairs) automatic bracket/quote pairing
- [`plugins/surround.lua`](nvim/.config/nvim/lua/gilhardl/plugins/surround.lua) - [nvim-surround](https://github.com/kylechui/nvim-surround) manipulate surrounding characters
- [`plugins/comment.lua`](nvim/.config/nvim/lua/gilhardl/plugins/comment.lua) - [Comment.nvim](https://github.com/numToStr/Comment.nvim) smart commenting with treesitter context
- [`plugins/formatting.lua`](nvim/.config/nvim/lua/gilhardl/plugins/formatting.lua) - [conform.nvim](https://github.com/stevearc/conform.nvim) format-on-save (prettier, stylua, black) (`<leader>mp`)
- [`plugins/linting.lua`](nvim/.config/nvim/lua/gilhardl/plugins/linting.lua) - [nvim-lint](https://github.com/mfussenegger/nvim-lint) linting on save/change (eslint_d, pylint) (`<leader>l`)

**LSP & Completion**

- [`plugins/lsp-config.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lsp-config.lua) - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [mason.nvim](https://github.com/williamboman/mason.nvim) LSP configurations with installer (ts_ls, lua_ls, pyright, etc.) and keybindings (`gd`, `gr`, `<leader>ca`)
- [`plugins/nvim-cmp.lua`](nvim/.config/nvim/lua/gilhardl/plugins/nvim-cmp.lua) - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) autocompletion with LSP, snippets, buffer, path sources

**Git Integration**

- [`plugins/gitsigns.lua`](nvim/.config/nvim/lua/gilhardl/plugins/gitsigns.lua) - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) git decorations and hunk operations (`<leader>hs`, `<leader>hp`, `]h`)
- [`plugins/lazygit.lua`](nvim/.config/nvim/lua/gilhardl/plugins/lazygit.lua) - [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) lazygit integration (`<leader>lg`)

**Utilities**

- [`plugins/init.lua`](nvim/.config/nvim/lua/gilhardl/plugins/init.lua) - Minimal plugins (plenary.nvim, vim-tmux-navigator)
- [`plugins/auto-session.lua`](nvim/.config/nvim/lua/gilhardl/plugins/auto-session.lua) - [auto-session](https://github.com/rmagatti/auto-session) session management (`<leader>wr`, `<leader>ws`)
- [`plugins/todo-comments.lua`](nvim/.config/nvim/lua/gilhardl/plugins/todo-comments.lua) - [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) highlight and navigate TODO comments (`]t`, `[t`, `<leader>ft`)
- [`plugins/trouble.lua`](nvim/.config/nvim/lua/gilhardl/plugins/trouble.lua) - [trouble.nvim](https://github.com/folke/trouble.nvim) diagnostics/quickfix list (`<leader>xw`, `<leader>xd`, `<leader>xt`)

## License

This project is open-sourced under MIT License.

See [LICENSE.txt](LICENSE.txt).
