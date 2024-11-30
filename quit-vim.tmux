#! /usr/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
QUIT_VIM=$DIR/scripts/quit-vim.sh

tmux bind-key Q run-shell -b "$QUIT_VIM"
