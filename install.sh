#!/bin/sh

if [ -f $HOME/.vimrc ]; then
	backup_dot_vimrc="$HOME/.vimrc`date '+%y%m%d_%H%M%S'`"
	echo "$HOME/.vimrc already exist, easyvim backup it to $backup_dot_vimrc"
	cp -f $HOME/.vimrc $backup_dot_vimrc
fi

echo ""

# install Vundle
echo "install vim-plug..."
mkdir -p ~/.vim/autoload ~/.vim/plugged
git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug > /dev/null 2>&1 || {
	echo "Network error, install vim-plug failed!"
	exit 1
}
cp ~/.vim/plugged/vim-plug/plug.vim ~/.vim/autoload/

echo "source ~/.vim/basic.vim" > $HOME/.vimrc 
echo "source ~/.vim/plugins.vim" >> $HOME/.vimrc

echo "Easyvim install succsess, exec :PlugInstall in VIM!"
echo ""
