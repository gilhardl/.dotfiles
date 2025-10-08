ZSH_HOME=$HOME/.zsh 

# ZSH History
export HISTFILE=$ZSH_HOME/.zsh_history  # History file
export HISTSIZE=10000                   # Commands count loaded into memory
export SAVEHIST=10000                   # Commands count saved on file
setopt HIST_IGNORE_ALL_DUPS             # Ignore dupplicates
setopt HIST_FIND_NO_DUPS                # Hide dupplicates on search

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fuzzy finder (see https://github.com/junegunn/fzf)
source <(fzf --zsh)

# Smarter cd command (see https://github.com/ajeetdsouza/zoxide)
source <(zoxide init --cmd cd zsh)

# Prompt
fpath+="$HOME/.config/zsh/plugins/zen"
autoload -Uz promptinit
promptinit
prompt zen

# opencode
export PATH=$PATH:/Users/gilhardl/.opencode/bin

# LM Studio
export PATH=$PATH:/Users/gilhardl/.lmstudio/bin
