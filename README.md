# dotfiles

This repository contains my personal dotfiles to configure:

- ZSH
- Git
- NeoVim
- NPM

## Requirements

- [homebrew](https://brew.sh/)
- [stow](https://www.gnu.org/software/stow/)

## Installation

Clone the repository:

```sh
git clone --recurse-submodules https://github.com/gilhardl/dotfiles.git ~/.dotfiles
```

Change git config:

```sh
sed -i '' -e 's/Lucas GILHARD/Your Name/g' git/.gitconfig
sed -i '' -e 's/lucas@gilhard.fr/your@email.com/g' git/.gitconfig
```

Change NPM config:
```sh
sed -i '' -e 's/Lucas GILHARD/Your Name/g' npm/.npmrc
sed -i '' -e 's/lucas@gilhard\.fr/your@email\.com/g' npm/.npmrc
sed -i '' -e 's/http:\/\/github\.com\/gilhardl/https:\/\/your\-author\-url\.com/g' npm/.npmrc
```



Symlink the dotfiles to your home directory:

```sh
cd ~/.dotfiles
stow zsh && stow git && stow nvim && stow npm
```

## What's Inside

### Shell (ZSH)

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
