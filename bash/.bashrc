#!/usr/bin/env sh

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

function sdstat {
    command systemctl status "$@" --no-pager -l
}

# export PATH="$HOME/.cargo/bin:$PATH"


alias ll='ls -als'
alias l='ls -al'
alias ..='cd ..'

export EDITOR='emacsclient -c --alternate-editor=""'
export PYTHONDONTWRITEBYTECODE=1

# first arg is the output file name, all other args are sequentially merged together
function mergePDFs {
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=${@:1} ${@:2:$#}
}

function my-nix-gen-closure-for () {
    # https://nixos.org/nix/manual/#ssec-copy-closure
    nix-store --export $(nix-store -qR $(type -p $1)) > $1.closure
}

function fixcape {

	pkill xcape
	xmodmap ~/.Xmodmapdefaults
	xmodmap ~/.Xmodmap
	xcape -e 'Control_L=Escape;Control_R=Escape;Shift_R=parenleft;Shift_L=parenright;Alt_R=backslash' -t 250
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

alias nix-query-ocaml='nix-env -qaP -A nixpkgs.ocamlPackages '

export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git -l -g \"\""
function kotlin-lsp-shiv() {
	cd ~/Documents/projects/KotlinLanguageServer
	./gradlew -q run
}

gpg-connect-agent updatestartuptty /bye >> /dev/null

eval "$(direnv hook bash)"
