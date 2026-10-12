# Login environment, sourced by the local ~/.zprofile.

typeset -U PATH path                            # Keep PATH entries unique

eval "$(/opt/homebrew/bin/brew shellenv zsh)"   # Homebrew (https://brew.sh)

path=($HOME/.local/bin $path)                   # User binaries

export EDITOR="vim"                             # Default text editor
