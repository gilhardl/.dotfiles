# Commands completion, with the completions Homebrew installs

fpath=($HOMEBREW_PREFIX/share/zsh/site-functions $fpath)

# The dump is rebuilt once a day and trusted (-C, no security check) otherwise
autoload -Uz compinit
_zcompdump=$HOME/.cache/zsh/zcompdump
[[ -d ${_zcompdump:h} ]] || mkdir -p ${_zcompdump:h}
_zcompdump_stale=($_zcompdump(N.mh+24))
if [[ -f $_zcompdump && ${#_zcompdump_stale} -eq 0 ]]; then
  compinit -C -d $_zcompdump
else
  compinit -d $_zcompdump
fi
unset _zcompdump _zcompdump_stale
