#/bin/sh

echo "Overwriting ~/.config with files from ~/dotfiles/config"
rsync -av ~/dotfiles/.config ~/ > /dev/null
echo "Clobbering x250's bash config"
rsync -av ~/dotfiles/x250/.bash_profile ~ > /dev/null
rsync -av ~/dotfiles/x250/.bashrc ~ > /dev/null
rsync -av ~/dotfiles/.gitconfig ~ > /dev/null
echo "Done!"
