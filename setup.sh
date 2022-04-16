#! /usr/bin/bash
#if [-f ]
ln -sf dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf dotfiles/gitconfig $HOME/.gitconfig
ln -sf dotfiles/bashrc $HOME/.bashrc
ln -sf dotfiles/vimrc $HOME/.vimrc
ln -sf dotfiles/zshrc $HOME/.zshrc
if [ -d $HOME/.oh-my-zsh ];then
	echo 'oh-my-zsh exists'
else 
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh
fi

if [ -d $HOME/.oh-my-zsh/plugins/zsh-autosuggestions ];then
	echo 'already have'
else
	mkdir $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
fi
	
