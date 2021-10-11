#!/usr/bin/env sh

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ll='ls -als'
alias l='ls -al'
alias ..='cd ..'

export EDITOR='emacsclient -c --alternate-editor=""'
export PYTHONDONTWRITEBYTECODE=1

function restic-b2-x250 {
    sh -c "$(pass show restic.sh)" sh "$@"
}

# first arg is the output file name, all other args are sequentially merged together
function mergePDFs {
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=${@:1} ${@:2:$#}
}

alias inputlist='xinput list'
alias pg='pgrep -af'
alias md='mkdir'
alias xo='xdg-open'

alias ec='emacsclient -n'

alias munch="youtube-dl -o '%(title)s.%(ext)s' --extract-audio --audio-format mp3"

# certain sites block wget's user-agent. I'm not using it for
# nefarious purposes, just for convenient downloading.
alias fakewget='wget --user-agent="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:32.0) Gecko/20100101 Firefox/32.0" -c'

export SYSTEMD_PAGER=""

if [[ "$TERM" == "eterm-color" || "$TERM" == "dumb" ]]; then
    export PS1="\w$ "
fi

export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git -l -g \"\""

eval "$(direnv hook bash)"
