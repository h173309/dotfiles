#!/bin/sh

source ~/.bashrc

autoload -U colors
colors

autoload -U compinit
compinit

zplug "zsh-users/zsh-completions"

PROMPT='%B%F{cyan}%n%f%b %# '
