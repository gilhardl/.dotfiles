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

Change Git config:

```sh
sed -i '' -e 's/Lucas GILHARD/Your Name/g' git/.gitconfig
sed -i '' -e 's/lucas@gilhard.fr/your@email.com/g' git/.gitconfig
```

Change NPM config:

```sh
sed -i '' -e 's/Lucas GILHARD/Your Name/g' npm/.npmrc
sed -i '' -e 's/lucas@gilhard.fr/your@email.com/g' npm/.npmrc
sed -i '' -e 's,http://github.com/gilhardl,https://your-author-url.com,g' npm/.npmrc
```

Symlink the dotfiles to your home directory:

```sh
cd ~/.dotfiles
stow zsh && stow git && stow nvim && stow npm
```

## What's Inside

### Ghostty

- [`.config/ghostty/config`](ghostty/.config/ghostty/config) - Ghostty configuration

### ZSH

- [`.zprofile`](zsh/.zprofile) - ZSH profile
- [`.zshrc`](zsh/.zshrc) - ZSH startup script
- [`.config/zsh/zen/prompt_zen_setup`](zsh/.config/zsh/zen/prompt_zen_setup) - Really simple zsh prompt (see [zen.zsh](https://github.com/cybardev/zen.zsh)) loaded from [`.zshrc`](zsh/.zshrc)

### Git

- [`.gitconfig`](git/.gitconfig) - Git configuration

### NPM

- [`.npmrc`](npm/.npmrc) - NPM configuration

### NeoVim

NeoVim configuration is splitted into core configuration and lazy plugins.

#### Core configuration

- [`core/options.lua`](./nvim/.config/nvim/lua/gilhardl/core/options.lua) - Core NeoVim options
- [`core/keymaps.lua`](./nvim/.config/nvim/lua/gilhardl/core/keymaps.lua) - Keyboard shortcuts mapping

#### Plugins

- [`plugins/init`](./nvim/.config/nvim/lua/gilhardl/plugins/init.lua) - Simple utilities which doesn't need configuration
- [`plugins/colorscheme`](./nvim/.config/nvim/lua/gilhardl/plugins/colorscheme.lua) - Theme colorscheme
- [`plugins/auto-dark-mode`](./nvim/.config/nvim/lua/gilhardl/plugins/auto-dark-mode.lua) - Switch background brightness when system mode changes
- [`plugins/nvim-tree`](./nvim/.config/nvim/lua/gilhardl/plugins/nvim-tree.lua) - File explorer
- [`plugins/which-key`](./nvim/.config/nvim/lua/gilhardl/plugins/which-key.lua) - Keybindings helper

## License

This project is open-sourced under MIT License.

See [LICENSE.txt](LICENSE.txt).
