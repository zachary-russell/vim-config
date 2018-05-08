#!/bin/bash
if [ -z "$(ls -A ~/.vim/bundle/Vundle.vim)" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	echo "Installed Vundle"
else
	echo "Vundle Already Installed"
fi
if [ -z "$(ls -A ~/.vimrc)" ]; then
	mv ~/.vimrc ~/.vimrc.old
	echo "Moved existing .vimrc to .vimrc.old"
fi
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf $DIR/.vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'
