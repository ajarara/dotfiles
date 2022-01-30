pkill ssh-agent
eval `ssh-agent`

# command -v setxkbmap &> /dev/null && setxkbmap -option ctrl:swapcaps

export GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"
