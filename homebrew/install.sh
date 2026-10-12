#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Load Homebrew shell environment
eval "$(/opt/homebrew/bin/brew shellenv bash)"

# Install Homebrew packages; nothing is uninstalled (run `brew bundle cleanup` to list what the Brewfile lacks)
echo "Installing Homebrew packages..."
brew update && brew bundle install --file="$(dirname "${BASH_SOURCE[0]}")/Brewfile" && brew upgrade
