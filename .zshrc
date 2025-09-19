# Zen prompt
fpath+="$HOME/.zsh/zen"
autoload -Uz promptinit
promptinit
prompt zen

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fuzzy finder (see https://github.com/junegunn/fzf)
source <(fzf --zsh)

# Smarter cd command (see https://github.com/ajeetdsouza/zoxide)
source <(zoxide init --cmd cd zsh)
