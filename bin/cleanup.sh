#!/bin/bash

rm -f ~/.vimrc

sed -i source \∼/\.dotfiles\/bashrc_custom/d ~/.bashrc

rm -rf ~/".TRASH"
