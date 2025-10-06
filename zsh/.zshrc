# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fuzzy finder (see https://github.com/junegunn/fzf)
source <(fzf --zsh)

# Smarter cd command (see https://github.com/ajeetdsouza/zoxide)
source <(zoxide init --cmd cd zsh)

# Zen prompt
fpath+="$HOME/.zsh/zen"
autoload -Uz promptinit
promptinit
prompt zen

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/gilhardl/.lmstudio/bin"
# End of LM Studio CLI section


# opencode
export PATH=/Users/gilhardl/.opencode/bin:$PATH
