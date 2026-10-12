# CLAUDE.md

Personal macOS dotfiles of one person, symlinked into `$HOME` with GNU Stow. Public repository on GitHub. The README is the reference for the layout, the conventions and what was removed (and why); read it before changing anything.

## Rules

- No secrets, ever: the repository is public. Tokens and machine-specific values live in the local, untracked files (`~/.npmrc`, `~/.gitconfig`, `~/.zprofile`, `~/.zshrc`).
- Installers and tools write to the local files, never to a tracked one. A tracked file that changes on its own is a bug: find what wrote it and route it to a local file.
- Nothing in the interactive setup may reach Claude Code's shell: `zsh/.config/zsh/zshrc.zsh` returns early when `CLAUDECODE` is set; keep every alias, function, hook or plugin below that line, and keep `zprofile.zsh` to environment variables.
- No git submodules: ZSH plugins come from Homebrew.
- The Brewfile describes the machine: one line per package, under its group, with a comment. `install.sh` never uninstalls.
- A removal goes in the README's "Removed" table, dated, with its reason.
- Conventional commits (`type(scope): subject`), no `Co-Authored-By` and no agent attribution.

## Layout

- `homebrew/Brewfile`, `homebrew/install.sh`: packages and applications.
- `zsh/.config/zsh/` -> `~/.config/zsh/`: `zprofile.zsh` (login environment), `zshrc.zsh` (interactive entry point) and the modules it sources.
- `git/.config/git/` -> `~/.config/git/`: `config` and `ignore`.
- `install.sh`: Homebrew, `stow zsh git`, then the local entry files when missing.

## Verification

```sh
zsh -n zsh/.config/zsh/*.zsh                                # syntax
for i in 1 2 3; do env -u CLAUDECODE /usr/bin/time -p zsh -l -i -c exit; done   # startup, about 0.08 s on 2026-10-12
zsh -l -i -c 'alias; whence -w _prompt_precmd'              # with CLAUDECODE set: no alias from here, no prompt function
stow -n -v zsh git                                          # no conflict
brew bundle check --file=homebrew/Brewfile                  # the machine has everything
brew bundle cleanup --file=homebrew/Brewfile                # lists what the Brewfile lacks, uninstalls nothing
git status                                                  # clean after opening a new shell
```
