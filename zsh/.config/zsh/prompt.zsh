# Prompt, after zen.zsh (https://github.com/cybardev/zen.zsh)
# Left: "→ <dir>", pink, or red with the exit code after a failure.
# Right: duration of the last command (5 s or more), Python venv, git branch
# (yellow when changes are staged, red when some are not).

autoload -Uz add-zsh-hook vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{#FB4}'
zstyle ':vcs_info:*' unstagedstr '%F{#E77}'
zstyle ':vcs_info:*' formats '%c%u(%b)'

_prompt_preexec() {
  _prompt_start=${_prompt_start:-$SECONDS}
}

_prompt_precmd() {
  local duration="" venv="" branch=""
  if [[ -n $_prompt_start ]]; then
    local s=$(( SECONDS - _prompt_start ))
    unset _prompt_start
    if (( s >= 5 )); then
      (( s / 3600 )) && duration+="$(( s / 3600 ))h "
      (( s % 3600 / 60 )) && duration+="$(( s % 3600 / 60 ))m "
      (( s % 60 )) && duration+="$(( s % 60 ))s"
      duration="%F{#FB4}${duration% } "
    fi
  fi
  vcs_info
  [[ -n $VIRTUAL_ENV ]] && venv="%F{#E77}[${VIRTUAL_ENV:t}] "
  [[ -n $vcs_info_msg_0_ ]] && branch="%F{#AC8}$vcs_info_msg_0_"
  PS1="%(?.%F{#F7C}.%F{#E77}%? )→ %F{#4CF}%1~ %f"
  RPS1="$duration$venv$branch%f"
}

add-zsh-hook preexec _prompt_preexec
add-zsh-hook precmd _prompt_precmd
