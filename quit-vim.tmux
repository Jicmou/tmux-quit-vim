#! /usr/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
QUIT_VIM=$DIR/scripts/quit-vim.sh

source $QUIT_VIM

tmux bind-key Q run-shell -b terminate_vim_in_sessions
