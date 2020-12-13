#!/bin/sh sh

for FILE in .aliases .bashrc .bash_logout .gitconfig .profile .zshrc; do 
    rm -f ~/${FILE}
    ln -s ~/dotfiles/${FILE} ~/${FILE}
done
