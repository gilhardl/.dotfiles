# Minimalistic Zsh prompt (https://github.com/cybardev/zen.zsh)
fpath+="$HOME/.config/zsh/plugins/zen"
autoload -Uz promptinit
promptinit
prompt zen
