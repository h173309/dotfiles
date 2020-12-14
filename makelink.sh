#!/usr/bin/sh

for FILE in .aliases .bashrc .bash_profile .bash_logout .gitconfig .profile .zshrc .zprofile; do 
    rm -f ~/${FILE}
    ln -s ~/dotfiles/${FILE} ~/${FILE}
done
