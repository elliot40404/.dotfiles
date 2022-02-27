#!/usr/bin/env bash

## get rg, fd, fzf, ranger, batcat, tmux
## get nvim
## get nvm
## get zsh
# sh -c "$(get https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

## check if configs exist and create backups

if [[ -e ~/.config/nvim/init.vim ]]; then
	mv ~/.config/nvim/init.vim ~/.config/nvim/bck_init.vim
fi

if [[ -e ~/.zshrc ]]; then
	mv ~/.zshrc ~/.bck_zshrc
fi

#if [[ -e ~/.bashrc ]]; then
#	mv ~/.bashrc ~/.bck_bashrc
#fi

## create symlinks 

ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim # nvim config

ln -s ~/.dotfiles/.zshrc ~/.zshrc # zsh config

#ln -s ~/.dotfiles/init.vim ~/.bashrc # bash config

## Reload source

source ~/.zshrc
