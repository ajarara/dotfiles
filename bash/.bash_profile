pkill ssh-agent
eval `ssh-agent`

export GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"
