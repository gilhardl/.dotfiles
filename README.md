# Lucas's .dotfiles

Personal macOS configuration: the Homebrew packages and applications of the machine, the ZSH shell and Git. Files are symlinked into the home directory with [GNU Stow](https://www.gnu.org/software/stow/).

## Requirements

- macOS 27 on Apple silicon (Homebrew in `/opt/homebrew`)

## Installation

```sh
git clone https://github.com/gilhardl/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```

The install script:

1. installs Homebrew if missing, then the packages and applications of the [Brewfile](homebrew/Brewfile); it never uninstalls anything;
2. symlinks `zsh` and `git` into the home directory with Stow;
3. creates the local entry files `~/.zprofile`, `~/.zshrc` and `~/.gitconfig` if they are missing.

## Layout

| Path | Symlinked to | What |
| --- | --- | --- |
| [`homebrew/Brewfile`](homebrew/Brewfile) | | formulae, casks and Mac App Store apps of the machine |
| [`zsh/.config/zsh/zprofile.zsh`](zsh/.config/zsh/zprofile.zsh) | `~/.config/zsh/` | login environment: Homebrew, `PATH`, `EDITOR` |
| [`zsh/.config/zsh/zshrc.zsh`](zsh/.config/zsh/zshrc.zsh) | `~/.config/zsh/` | interactive shell: history, key bindings, completion, prompt, plugins |
| [`git/.config/git/config`](git/.config/git/config) | `~/.config/git/` | Git identity and defaults |
| [`git/.config/git/ignore`](git/.config/git/ignore) | `~/.config/git/` | global ignore rules |

The interactive shell loads, in this order:

- [`history.zsh`](zsh/.config/zsh/history.zsh): 10,000 entries without duplicates, in `~/.local/state/zsh/history`
- [`keybindings.zsh`](zsh/.config/zsh/keybindings.zsh): emacs line editing, Option and Cmd arrows
- [`completion.zsh`](zsh/.config/zsh/completion.zsh): `compinit` with the completions Homebrew installs, its dump rebuilt once a day
- [`prompt.zsh`](zsh/.config/zsh/prompt.zsh): a minimal `vcs_info` prompt after [zen.zsh](https://github.com/cybardev/zen.zsh)
- [`plugins.zsh`](zsh/.config/zsh/plugins.zsh): [fzf](https://github.com/junegunn/fzf) (Ctrl-R), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting), all from Homebrew

## Conventions

- **Installers write to local files, never to the repository.** `~/.zprofile`, `~/.zshrc` and `~/.gitconfig` are untracked files: the first two only source the tracked config, and the lines installers append (Docker Desktop, `git lfs install`…) stay there, in plain sight. `git config --global` writes to `~/.gitconfig`, which Git reads after `~/.config/git/config`.
- **No secrets.** The repository is public. `~/.npmrc`, which holds a registry token, is a local file.
- **Claude Code gets the environment, not the interactive setup.** `zshrc.zsh` returns early when `CLAUDECODE` is set: the shell of Claude Code's Bash tool keeps `PATH` and the variables, without aliases, functions or plugins.
- **The Brewfile describes the machine.** After installing or removing something, update the Brewfile; `brew bundle cleanup --file=~/.dotfiles/homebrew/Brewfile` lists what it lacks, without uninstalling. Installed outside Homebrew, on purpose: Parallels Desktop, Microsoft Office, OneDrive, Codex, ChatGPT, Postico 2.

Update the packages:

```sh
brew update && brew bundle install --file=~/.dotfiles/homebrew/Brewfile && brew upgrade
```

## Claude Code

The Claude Code configuration (global `CLAUDE.md`, `settings.json`, personal skills) is not part of these dotfiles: it lives in a separate private repository, [unstud/claude](https://github.com/unstud/claude), cloned directly into `~/.claude` before the first launch of Claude Code.

## Removed

| Date | What | Why |
| --- | --- | --- |
| 2026-10-12 | git-commit helper (`git feat`, `git fix`… aliases) | generated twelve multi-line aliases in the global Git config on every new commit of this repository, which broke `git filter-repo`; unused |
| 2026-10-12 | zoxide | `zoxide init --cmd cd` replaced `cd` with a function, replayed into Claude Code's shell, where it caused trouble; little used |
| 2026-10-12 | aliases (`ls` variants, suffix aliases) and alias-finder | unused; replayed into Claude Code's shell (`grep='grep --color'`), and alias-finder ran on every command |
| 2026-10-04 | `rm -i`, `cp -i`, `mv -i` aliases | made Claude Code's commands interactive |
| 2026-10-12 | Ghostty | no longer the terminal in use |
| 2026-10-12 | tmux and Neovim (with their plugins and themes) | rarely used |
| 2026-10-12 | VS Code settings, key bindings and extensions | VS Code Settings Sync already syncs them; the symlinks conflicted with it |
| 2026-10-12 | NPM config | holds a registry token; the `init-*` defaults were not worth tracking |
| 2026-10-12 | opencode, LM Studio, Antigravity, Cursor CLI | Claude Code is the only coding agent in use |
| 2026-10-12 | `docker` formula | Docker Desktop ships the CLI; the formula could not be linked over it |
| 2026-10-12 | `python@3` formula | `uv` manages Python versions; Homebrew keeps the Python its formulae depend on |
| 2026-10-12 | `nixfmt` and the nix-darwin marker in `/opt/homebrew` | left over from a nix-darwin trial, uninstalled |
| 2026-10-15 | `node@24` formula | `node` (26) is the only Node.js in use; `mongosh` already pulled it in and it shadowed `node@24`, which is keg-only |
| 2026-10-12 | ZSH plugins as git submodules (zen.zsh, zsh-completions…) | plugins come from Homebrew; zsh-completions was dead code without `compinit` |

## License

This project is open-sourced under MIT License.

See [LICENSE.txt](LICENSE.txt).
