#! /usr/bin/bash

terminate_vim_in_all_panes() {
  tmux list-panes -aF "#{pane_id} #{pane_current_command} #{pane_start_command}" |
    grep 'vim' |
    awk '/[0-9]+/{ print $1 }' |
    while read -r paneId; do
      tmux send-keys -t $paneId Escape # Back to normal mode
      tmux send-keys -t $paneId :wqall # Save and quit all windows
      tmux send-keys -t $paneId Enter  # Send Enter to confirm
    done
}

terminate_vim_in_all_panes
