#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Homebrew packages
echo "Installing Homebrew packages..."
brew update && brew bundle install --cleanup --file=~/.dotfiles/homebrew/Brewfile && brew upgrade

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
