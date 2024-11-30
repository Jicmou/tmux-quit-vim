## Tmux Quit Vim

Exit all (neo)vim windows in your tmux sessions.

Inspired by [ddelnano/tmux-vim-exit](https://github.com/ddelnano/tmux-vim-exit)

## Usage

### Key Bindings

- prefix + Q

  - Close and save all (neo)vim windows in each tmux session's panes and windows

## Installation

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'jicmou/tmux-quit-vim'

### Manual Install

Clone the repo

```bash
git clone https://github.com/jicmou/tmux-vim-exit ~/clone/path
```

Add the following line to your tmux.conf file

```
run-shell ~/clone/path/yank.tmux
```

Source your tmux config

```
tmux source-file path/to/.tmux.conf
```
