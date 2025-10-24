#!/bin/bash

VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"

# Create VSCode User directory if it doesn't exist
mkdir -p "$VSCODE_USER_DIR"

# Symlink settings and keybindings
echo "Symlinking VSCode settings..."
ln -sf ~/.dotfiles/vscode/settings.jsonc "$VSCODE_USER_DIR/settings.json"
ln -sf ~/.dotfiles/vscode/keybindings.jsonc "$VSCODE_USER_DIR/keybindings.json"

# Install VSCode extensions
echo "Installing VSCode extensions..."
if command -v code &> /dev/null; then
  # Extract extension IDs from extensions.jsonc and install them
  grep '"id":' ~/.dotfiles/vscode/extensions.jsonc | \
    sed 's/.*"id": "\([^"]*\)".*/\1/' | \
    while read -r extension_id; do
      echo "Installing extension: $extension_id"
      code --install-extension "$extension_id" --force
    done
else
  echo "Warning: 'code' command not found. Please install VSCode or add it to your PATH."
  echo "You can install the 'code' command by opening VSCode and running:"
  echo "  Command Palette (Cmd+Shift+P) -> 'Shell Command: Install 'code' command in PATH'"
fi
