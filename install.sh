#!/bin/sh

if [ -f $HOME/.vimrc ]; then
	backup_dot_vimrc="$HOME/.vimrc`date '+%y%m%d_%H%M%S'`"
	echo "$HOME/.vimrc already exist, easyvim backup it to $backup_dot_vimrc"
	cp -f $HOME/.vimrc $backup_dot_vimrc
fi

echo ""

# install Vundle
echo "install Vundle..."
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "source ~/.vim/basic.vim" > $HOME/.vimrc 
echo "source ~/.vim/plugins.vim" >> $HOME/.vimrc

echo "Easyvim install succsess, exec :PluginInstall in VIM!"
echo ""
