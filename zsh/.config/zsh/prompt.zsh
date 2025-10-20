# Minimalistic Zsh prompt (https://github.com/cybardev/zen.zsh)
fpath+="$ZSH_CONFIG/plugins/zen.zsh"
autoload -Uz promptinit
promptinit
prompt zen
