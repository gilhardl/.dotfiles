# dotfiles

This repository contains my personal dotfiles to configure:
- ZSH & Oh My Zsh
- Git
- asdf
- NPM

## Installation

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/gilhardl/dotfiles/main/install.sh)"
```

The install script will:
1. Clone the repository to `~/.dotfiles`
2. Backup existing dotfiles to the `~/.dotfiles/backup` directory.
3. Symlink the dotfiles to your home directory.

## What's Inside

### Dotfiles

- `.gitconfig` - [Git configuration](dotfiles/.gitconfig)
- `.npmrc` - [NPM configuration](dotfiles/.npmrc)
- `.tool-versions` - [asdf tools versions](dotfiles/.tool-versions)
- `.zprofile` - [ZSH profile](dotfiles/.zprofile)
- `.zshrc` - [ZSH configuration](dotfiles/.zshrc)

### Custom scripts

- `install.sh` - Installation script

## Customization

You can customize the installation by forking this repo and editing the dotfiles to your liking. Then you can run the `install.sh` script by replacing the `https://raw.githubusercontent.com/gilhardl/dotfiles/main/install.sh` with your fork url.

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/<your-username>/dotfiles/main/install.sh)"
```

## License

This project is open-sourced under the [MIT License](LICENSE).

