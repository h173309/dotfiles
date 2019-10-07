#OS指定
OS="Linux"

# 汎用コマンド

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lhA'

alias grep='grep --color=auto'

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

# usr名表示
export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[36m\]\w\[\033[00m\] $ '

# Windowsのコマンドをエンコード
if [ $OS = "Windows" ] ; then
  function wincmd(){
    CMD=$1
    shift
    $CMD $* 2>&1 | iconv -f cp932 -t utf-8
  }
fi

# コマンドエンコード
if [ $OS = "Windows" ] ; then
  alias ping='wincmd ping'
  alias ipconfig='wincmd ipconfig'
  alias where='wincmd where'
  alias python='wincmd python'
  alias su='wincmd powershell -command "Start-Process \"C:\Program Files\Git\git-bash.exe\" -Verb runas"'
fi
