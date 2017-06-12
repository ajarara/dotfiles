#!/usr/bin/env python3

# SOURCE THIS LAST! tmux blocks.

# starting tmux, should ALWAYS be last block in bashrc
if [[ -z "$TMUX" && "$TERM" != "eterm-color" && "$TERM" != "dumb" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi
