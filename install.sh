#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Install Homebrew and packages
source "$DOTFILES/homebrew/install.sh"

# Symlink the tracked configuration into the home directory
echo "Symlinking dotfiles to home directory..."
cd "$DOTFILES" && stow zsh git

# Local entry files, untracked: installers append to them, never to the repository
if [ ! -e ~/.zprofile ]; then
  printf '%s\n' \
    "# Local and untracked. Tracked login config: ~/.config/zsh/zprofile.zsh (~/.dotfiles)" \
    "source ~/.config/zsh/zprofile.zsh" "" "# Installers append below this line." > ~/.zprofile
fi
if [ ! -e ~/.zshrc ]; then
  printf '%s\n' \
    "# Local and untracked. Tracked interactive config: ~/.config/zsh/zshrc.zsh (~/.dotfiles)" \
    "source ~/.config/zsh/zshrc.zsh" "" "# Installers append below this line." > ~/.zshrc
fi
if [ ! -e ~/.gitconfig ]; then
  echo "# Local git config: tools write here (git config --global). Tracked config: ~/.config/git/config" > ~/.gitconfig
fi
