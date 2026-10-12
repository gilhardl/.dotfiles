DOTFILES=$HOME/.dotfiles
ZSH_HOME=$HOME/.zsh
ZSH_CONFIG=$HOME/.config/zsh

source $ZSH_CONFIG/history.zsh            # Shell history

source $ZSH_CONFIG/homebrew.zsh           # Package manager

source $ZSH_CONFIG/fzf.zsh                # Fuzzy finder
# source $ZSH_CONFIG/zoxide.zsh             # Better cd command

source $ZSH_CONFIG/prompt.zsh             # Zen prompt

source $ZSH_CONFIG/keybindings.zsh        # Key bindings

source $ZSH_CONFIG/alias.zsh              # Useful aliases
source $ZSH_CONFIG/alias-finder.zsh       # Helper to find existing aliases

source $ZSH_CONFIG/completions.zsh        # Commands completions
source $ZSH_CONFIG/auto-suggestions.zsh   # Commands auto-suggestions

source $ZSH_CONFIG/syntax-highlight.zsh   # Syntax highlighting


# Cursor CLI
export PATH=$PATH:$HOME/.local/bin

# opencode
export PATH=$PATH:$HOME/.opencode/bin

# LM Studio
export PATH=$PATH:$HOME/.lmstudio/bin

# Antigravity IDE
export PATH=$PATH:$HOME/.antigravity-ide/antigravity-ide/bin

# Antigravity CLI
export PATH=$PATH:$HOME/.local/bin
