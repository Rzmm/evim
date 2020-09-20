#!/bin/sh

if [ -f $HOME/.vimrc ]; then
	backup_dot_vimrc="$HOME/.vimrc`date '+%y%m%d_%H%M%S'`"
	echo "$HOME/.vimrc already exist, easyvim backup it to $backup_dot_vimrc"
	cp -f $HOME/.vimrc $backup_dot_vimrc
fi

if [ -f $HOME/.vim ]; then
	backup_dot_vim="$HOME/.vim`date '+%y%m%d_%H%M%S'`"
	echo "$HOME/.vim already exist, easyvim backup it to $backup_dot_vim"
	cp -rf $HOME/.vim $backup_dot_vim
fi

echo ""

git clone git@github.com:r1024/easyvim.git $HOME/.vim > /dev/null 2>&1

# install plugins
mkdir ~/.vim/bundle/
echo "Clone delimitMate ..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "source ~/.vim/basic.vim" > $HOME/.vimrc 
echo "source ~/.vim/plugins.vim" >> $HOME/.vimrc

echo "Easyvim install succsess!"
echo ""
