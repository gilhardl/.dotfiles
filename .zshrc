# Zen prompt
fpath+="$HOME/.zsh/zen"
autoload -Uz promptinit
promptinit
prompt zen

# Zsh autosuggestions (see https://github.com/zsh-users/zsh-autosuggestions)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting for zsh (see https://github.com/zsh-users/zsh-syntax-highlighting)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fuzzy finder (see https://github.com/junegunn/fzf)
source <(fzf --zsh)

# Smarter cd command (see https://github.com/ajeetdsouza/zoxide)
source <(zoxide init --cmd cd zsh)
