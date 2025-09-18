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

- `.zsh/zsh-autosuggestions` - [Zsh auto-complete](dotfiles/.zsh/zsh-autosuggestions) - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- `.zsh/zsh-syntax-highlighting` - [Zsh syntax highlighting](dotfiles/.zsh/zsh-syntax-highlighting) - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- `.zsh/fzf` - [Fzf](dotfiles/.zsh/fzf) - [fzf](https://github.com/junegunn/fzf)
- `.zsh/zen` - [Zen prompt](dotfiles/.zsh/zen) - [zen.zsh prompt](https://github.com/cybardev/zen.zsh)
- `.zsh/zoxide` - [Zoxide](dotfiles/.zsh/zoxide) - [zoxide](https://github.com/ajeetdsouza/zoxide)

### Dotfiles

- `.gitconfig` - [Git configuration](dotfiles/.gitconfig)
- `.npmrc` - [NPM configuration](dotfiles/.npmrc)
- `.vimrc` - [Vim configuration](dotfiles/.vimrc)
- `.zprofile` - [ZSH profile](dotfiles/.zprofile)
- `.zshrc` - [ZSH configuration](dotfiles/.zshrc)

## License

This project is open-sourced under MIT License, see [LICENSE.txt](LICENSE.txt).
