ZSH_HOME=$HOME/.zsh 
ZSH_CONFIG=$HOME/.config/zsh

source $ZSH_CONFIG/history.zsh
source $ZSH_CONFIG/prompt.zsh
source $ZSH_CONFIG/alias.zsh
source $ZSH_CONFIG/auto-suggestions.zsh
source $ZSH_CONFIG/completions.zsh
source $ZSH_CONFIG/syntax-highlight.zsh

source $ZSH_CONFIG/homebrew.zsh
source $ZSH_CONFIG/fzf.zsh
source $ZSH_CONFIG/zoxide.zsh
source $ZSH_CONFIG/alias-finder.zsh
source $ZSH_CONFIG/git-commit.zsh

export PATH=$PATH:/Users/gilhardl/.opencode/bin
export PATH=$PATH:/Users/gilhardl/.lmstudio/bin
