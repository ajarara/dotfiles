#!/usr/bin/env sh

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# starting with the example in the readme:
function sys {
    command systemctl status "$@" --no-pager -l
}

alias ll='ls -als'
alias l='ls -al'
alias ..='cd ..'

export EDITOR='emacsclient -c --alternate-editor=""'
export PYTHONDONTWRITEBYTECODE=1
