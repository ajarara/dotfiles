#/usr/bin/env bash

set -euf -o pipefail

function die() {
    echo "$2"
    exit "$1"
}

type stow > /dev/null || die 1 "GNU stow is required for bootstrap"

function stow_check() {
    stow --simulate "$@" 2> /dev/null || \
        die "$?" "dry run failure: stow --simulate $@"
}

declare -a stow_commands=(
    "i3"
    "x"
    "bash"
    "alacritty"
)

for cmd in "${stow_commands[@]}"
do stow_check "$cmd" 
done

for cmd in "${stow_commands[@]}"
do stow "$cmd"
done
