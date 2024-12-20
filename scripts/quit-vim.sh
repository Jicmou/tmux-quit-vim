#! /usr/bin/bash

terminate_vim_in_current_session() {
  tmux list-panes -F "#{pane_id} #{pane_current_command}" |
    grep 'vim' |
    awk '/[0-9]+/{ print $1 }' |
    while read -r paneId; do
      tmux select-pane -t "$paneId"
      tmux send-keys :wqall
      tmux send-keys Enter
    done
}

terminate_vim_in_windows() {
  tmux list-windows -F "#{window_id}" | while read -r windowId; do
    tmux select-window -t"$windowId"
    terminate_vim_in_current_session
  done
}

terminate_vim_in_sessions() {
  tmux list-sessions -F "#{session_id}" | while read -r sessionId; do
    tmux switch-client -t"$sessionId"
    terminate_vim_in_windows
  done
}

terminate_vim_in_sessions
