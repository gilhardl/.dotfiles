#!/bin/bash

# Install Homebrew and packages
source ~/.dotfiles/homebrew/install.sh

# Check for customize flag
if [[ "$1" == "-c" || "$1" == "--customize" ]]; then
  # Ask for user information
  read -p "Enter your name: " name
  read -p "Enter your email: " email
  read -p "Enter your website: " website

  # Replace personal information in git config
  sed -i '' -e "s/Lucas GILHARD/$name/g" git/.gitconfig
  sed -i '' -e "s/lucas@gilhard.fr/$email/g" git/.gitconfig

  # Replace personal information in npm config
  sed -i '' -e "s/Lucas GILHARD/$name/g" npm/.npmrc
  sed -i '' -e "s/lucas@gilhard.fr/$email/g" npm/.npmrc
  sed -i '' -e "s,http://github.com/gilhardl,$website,g" npm/.npmrc
fi

# Symlink dotfiles to home directory
echo "Symlinking dotfiles to home directory..."
cd "$(dirname "$(readlink -f "$0")")"
stow zsh && stow git && stow tmux && stow nvim && stow npm && stow ghostty

# Install VSCode settings and extensions
source ~/.dotfiles/vscode/install.sh
