#!/bin/bash
cd ~

FILE=.vimrc
if [ ! -e ~/$FILE ]; then
  ln -s ~/dotfiles/$FILE ~/$FILE
fi

FILE=.vim
if [ ! -e ~/$FILE ]; then
  ln -s ~/dotfiles/$FILE ~/$FILE
fi

FILE=.bashrc
if [ ! -e ~/$FILE ]; then
  ln -s ~/dotfiles/$FILE ~/$FILE
fi

FILE=.bash_profile
if [ ! -e ~/$FILE ]; then
  ln -s ~/dotfiles/$FILE ~/$FILE
fi

FILE=.zshrc
if [ ! -e ~/$FILE ]; then
  ln -s ~/dotfiles/$FILE ~/$FILE
fi

FILE=.tmux.conf
if [ ! -e ~/$FILE ]; then
  ln -s ~/dotfiles/$FILE ~/$FILE
fi
