# Use emacs-style line editing
bindkey -e

# Word navigation with Option+Arrow (macOS terminals)
bindkey '\e[1;3C' forward-word   # Option+Right
bindkey '\e[1;3D' backward-word  # Option+Left
bindkey '\ef' forward-word       # Option+Right (alt encoding)
bindkey '\eb' backward-word      # Option+Left (alt encoding)

# Word deletion with Option+Backspace / Option+Delete
bindkey '\e\x7f' backward-kill-word  # Option+Backspace
bindkey '\ed' kill-word              # Option+Delete

# Beginning / end of line with Cmd+Arrow
bindkey '\e[1;9C' end-of-line         # Cmd+Right (macOS Terminal)
bindkey '\e[1;9D' beginning-of-line   # Cmd+Left  (macOS Terminal)
bindkey '\eOF'    end-of-line         # Cmd+Right (VSCode / xterm)
bindkey '\eOH'    beginning-of-line   # Cmd+Left  (VSCode / xterm)
bindkey '\e[F'    end-of-line         # End key fallback
bindkey '\e[H'    beginning-of-line   # Home key fallback
