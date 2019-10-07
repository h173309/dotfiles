## OS指定
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
else
  OS='WINDOWS'
fi

## bash mode
#  set -o vi


## prompt表示
# --example
# usr-name_Green:curent-directory_Cian (git-branch)_Purple
# $ cmd
# PS1="\[\e[32m\]\u\[\e[00m\]:\[\e[36m\]\w\[\e[35m\]$(__git_ps1 " (%s)")\[\e[33m\] \$(date +%Y/%m/%d\ %H:%M:%S)\[\e[m\]\n $ "


# git setup
if [ -f ${HOME}/dotfiles/git/git-completion.bash ]; then
    source ${HOME}/dotfiles/git/git-completion.bash
fi
if [ -f ${HOME}/dotfiles/git/git-prompt.sh ]; then
    source ${HOME}/dotfiles/git/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

## prompt表示
# --example
# usr-name_Green:curent-directory_Cian (git-branch)_Purple yy/mm/dd HH:MM:SS_Yellow
# $ cmd

#
#  WHITE='\[\e[m\]'
#  RED='\[\e[31m\]'
#  GREEN='\[\e[32m\]'
#  YELLOW='\[\e[33m\]'
#  BLUE='\[\e[34m\]'
#  PURPLE='\[\e[35m\]'
#  CIAN='\[\e[36m\]'
#  GLAY='\[\e[37m\]'

PS1='\[\e[32m\]\u\[\e[m\]:\[\e[36m\]\w \[\e[35m\]$(__git_ps1 " (%s)") \[\e[33m\]\D{%y/%m/%d %H:%M:%S}\n \[\e[m\]$ '

## 汎用コマンド

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lhA'

alias grep='grep --color=auto'

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

alias du='df -h'
alias du='du -h'

## Windowsのコマンドをエンコード
if [ $OS = "Windows" ] ; then
  function wincmd(){
    CMD=$1
    shift
    $CMD $* 2>&1 | iconv -f cp932 -t utf-8
  }
fi

## コマンドエンコード
if [ $OS = "Windows" ] ; then
  alias ping='wincmd ping'
  alias ipconfig='wincmd ipconfig'
  alias where='wincmd where'
  alias python='wincmd python'
  alias su='wincmd powershell -command "Start-Process \"C:\Program Files\Git\git-bash.exe\" -Verb runas"'
fi
