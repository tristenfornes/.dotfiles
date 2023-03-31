#!/bin/bash
#This script is meant to set up the linux environment.

exec >> linuxsetup.log

if [[ $(uname) != "Linux" ]]; then
	echo "ERROR: This script onlu works on Linux systems."
	exit 1
fi

#Create .Trash directory

mkdir -p ~/".TRASH"

if [[ -f ~/.vimrc ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "The currrent vimrc files was changed to .bup_vimrc"
fi

cp /etc/vimrc ~/.vimrc

echo "source ∼/.dotfiles/etc/bashrc custom"
