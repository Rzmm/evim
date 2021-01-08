#!/bin/sh

if [ -f $HOME/.vimrc ]; then
	backup_dot_vimrc="$HOME/.vimrc`date '+%y%m%d_%H%M%S'`"
	echo "$HOME/.vimrc already exist, easyvim backup it to $backup_dot_vimrc"
	cp -f $HOME/.vimrc $backup_dot_vimrc
fi

echo ""

# install Vundle
echo "install Vundle..."
mkdir ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "source ~/.vim/basic.vim" > $HOME/.vimrc 
echo "source ~/.vim/plugins.vim" >> $HOME/.vimrc

echo "Easyvim install succsess, exec :PluginInstall in VIM!"
echo ""


在Git库中增加子模块
git submodule add <url_of_submodule>
git commit -am 'added <submodule>'

克隆含有子模块的项目
git clone <url_of_MainProject>
cd MainProject/<submodule>
git submodule init && git submodule update

从子模块的远端拉取上游修改
cd MainProject/<submodule>
git pull

