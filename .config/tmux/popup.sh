#!/bin/sh
parent=$(tmux display-message -p "#{session_name}")
popup="popup-$parent"

if tmux has-session -t "$popup" 2>/dev/null; then
    tmux attach-session -t "$popup"
else
    tmux new-session -s "$popup" \; \
        rename-window "build" \; \
        new-window -n "test" \; \
        new-window -n "repl" \; \
        select-window -t 1
fi
