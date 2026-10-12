# History

HISTFILE=$HOME/.local/state/zsh/history   # History file
HISTSIZE=10000                            # Commands count loaded into memory
SAVEHIST=10000                            # Commands count saved on file
setopt HIST_IGNORE_ALL_DUPS               # Ignore duplicates
setopt HIST_FIND_NO_DUPS                  # Hide duplicates on search

[[ -d ${HISTFILE:h} ]] || mkdir -p ${HISTFILE:h}
