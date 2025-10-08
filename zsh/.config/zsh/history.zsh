# History

export HISTFILE=$ZSH_HOME/.zsh_history  # History file
export HISTSIZE=10000                   # Commands count loaded into memory
export SAVEHIST=10000                   # Commands count saved on file
setopt HIST_IGNORE_ALL_DUPS             # Ignore dupplicates
setopt HIST_FIND_NO_DUPS                # Hide dupplicates on search
