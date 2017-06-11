#!/usr/bin/env sh

# starting with the example in the readme:
function sys {
    command systemctl status "$@" --no-pager -l
}

