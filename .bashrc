## OS指定
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
else
  OS='WINDOWS'
fi

## prompt表示
# --example
# usr-name_Green:curent-directory_Cian (git-branch)_Purple
# $ cmd
PS1="\[\e[32m\]\u\[\e[00m\]:\[\e[36m\]\w\[\e[35m\]$(__git_ps1)\[\e[m\]\n $ "

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
