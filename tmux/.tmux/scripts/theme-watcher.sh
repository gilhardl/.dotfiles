#!/usr/bin/env bash

CURRENT_THEME=""
POLLING_SLEEP_TIME=5

get_theme() {
  if defaults read -g AppleInterfaceStyle &>/dev/null; then
    echo "dark"
  else
    echo "light"
  fi
}

CURRENT_THEME=$(get_theme)

while true; do
  NEW_THEME=$(get_theme)
  
  if [ "$NEW_THEME" != "$CURRENT_THEME" ]; then
    CURRENT_THEME=$NEW_THEME
    
    tmux source-file ~/.tmux/themes/$CURRENT_THEME
    
    tmux display-message "Theme switched to $CURRENT_THEME mode"
  fi
  
  sleep $POLLING_SLEEP_TIME
done
