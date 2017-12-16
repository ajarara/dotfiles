#!/usr/bin/env sh

function myxcape {
    xcape -e 'Control_L=Escape;Control_R=Escape;Shift_R=parenleft;Shift_L=parenright;Alt_R=backslash' -t 250
}

function fixcape {
    
    echo "killing all xcape config"
    pkill xcape
    
    echo "giving xmodmap base configuration"
    xmodmap ~/.Xmodmapdefaults
    
    echo "calling xmodmap"
    xmodmap ~/.Xmodmap
    
    echo "calling xcape"
    myxcape
    
    echo "done!"
}

# first arg is the output file name, all other args are sequentially merged together
function mergePDFs {
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=${@:1} ${@:2:$#}
}

function my-nix-gen-closure-for () {
    # https://nixos.org/nix/manual/#ssec-copy-closure
    nix-store --export $(nix-store -qR $(type -p $1)) > $1.closure
}

# Whenever people see a bunch of text I love showing them this.
function hack {
        echo "You want me to hack $1?!? Sure."
	sudo tcpdump -i wlp3s0 -v
}


alias inputlist='xinput list'
alias pg='pgrep -af'
alias md='mkdir'
alias xo='xdg-open'

# alert us when this command completes
alias alert="notify-send \'Thing returned!\'"

alias ec='emacsclient -n'

# ugh... this is gross but it's necessary grossness
alias pipgimme='pip3 install --user'
alias pipthrow='pip3 uninstall'

alias munch="youtube-dl -o '%(title)s.%(ext)s' --extract-audio --audio-format mp3"

# certain sites block wget's user-agent. I'm not using it for
# nefarious purposes, just for convenient downloading.
alias fakewget='wget --user-agent="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:32.0) Gecko/20100101 Firefox/32.0" -c'

# implicit fedora req
alias gimme='sudo dnf install'

export SYSTEMD_PAGER=""

if [[ "$TERM" == "eterm-color" || "$TERM" == "dumb" ]]; then
    export PS1="\w$ "
fi

