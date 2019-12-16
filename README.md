# Dotfiles
Personal config files that do not belong in NixOS' config.

A previous iteration of this had to deal with multiple machines living in one
repo and had a pretty inconvenient symlink system. 

I use NixOS to manage service definitions and actual binaries (incl scripts that depend on binaries provided by nixpkgs), stow for everything else.

I _also_ use stow to manage /etc/ level files, though those are more sensitive (so, not in this repo :) ).

## Installation
`./bootstrap.sh`: designed to fail fast and be idempotent, run this at any time.

