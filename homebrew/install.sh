#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Homebrew packages
echo "Installing Homebrew packages..."
brew update && brew bundle install --cleanup --file=~/.dotfiles/homebrew/Brewfile && brew upgrade
