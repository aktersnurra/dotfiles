#!/bin/sh
parent=$(tmux display-message -p '#S')
tmux attach -t "popup-${parent}" 2>/dev/null || tmux new-session -s "popup-${parent}"
