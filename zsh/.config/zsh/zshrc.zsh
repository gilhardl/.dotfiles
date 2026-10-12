# Interactive shell, sourced by the local ~/.zshrc.

# Claude Code replays this file into the shell of its Bash tool: it gets the
# environment of zprofile.zsh and the lines installers append to ~/.zshrc,
# but none of the interactive setup below.
[[ -n $CLAUDECODE ]] && return

ZSH_CONFIG=$HOME/.config/zsh

source $ZSH_CONFIG/history.zsh       # Shell history
source $ZSH_CONFIG/keybindings.zsh   # Key bindings
source $ZSH_CONFIG/completion.zsh    # Commands completion
source $ZSH_CONFIG/prompt.zsh        # Prompt
source $ZSH_CONFIG/plugins.zsh       # fzf, auto-suggestions, syntax highlighting
