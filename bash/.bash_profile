export GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"

# restart the ssh-agent: for whatever reason the one that boots up doesn't worth with resident keys on the yubikey.
pkill ssh-agent
eval `ssh-agent`
