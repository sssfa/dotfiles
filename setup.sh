#! /usr/bin/bash
#if [-f ]
ln -sf dotfiles/gitconfig $HOME/.gitconfig
ln -sf dotfiles/bashrc $HOME/.bashrc
ln -sf dotfiles/vimrc $HOME/.vimrc
ln -sf dotfiles/zshrc $HOME/.zshrc
if [ -d $HOME/dotfiles/oh-my-zsh ];then
	echo 'oh-my-zsh exists'
else 
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/dotfiles/oh-my-zsh
fi
