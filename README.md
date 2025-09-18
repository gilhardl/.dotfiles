# dotfiles

This repository contains my personal dotfiles to configure:

- ZSH
- Git
- NPM
- Vim

## Requirements

- [homebrew](https://brew.sh/)
- [stow](https://www.gnu.org/software/stow/)

## Installation

Clone the repository:

```sh
git clone --recurse-submodules https://github.com/gilhardl/dotfiles.git ~/.dotfiles
```

Symlink the dotfiles to your home directory:

```sh
cd ~/.dotfiles
stow .
```

## What's Inside

### Shell (ZSH)

- [`.zsh/zsh-autosuggestions`](.zsh/zsh-autosuggestions) - Zsh auto-complete (see [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions))
- [`.zsh/zsh-syntax-highlighting`](.zsh/zsh-syntax-highlighting) - Zsh syntax highlighting (see [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting))
- [`.zsh/zen`](.zsh/zen) - ZSH prompt (see [zen.zsh](https://github.com/cybardev/zen.zsh))

### Dotfiles

- [`.gitconfig`](.gitconfig) - Git configuration
- [`.npmrc`](.npmrc) - NPM configuration
- [`.vimrc`](.vimrc) - Vim configuration
- [`.zprofile`](.zprofile) - ZSH profile
- [`.zshrc`](.zshrc) - ZSH configuration

## License

This project is open-sourced under MIT License.

See [LICENSE.txt](LICENSE.txt).
