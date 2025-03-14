# User specific aliases and functions
alias ll="ls -lhapv --group-directories-first --time-style=long-iso"

# PS1 prompt output
PS1='\e[m\e[35m[$(date "+%Y-%m-%d %H:%M:%S"])\e[m'

if [[ $EUID -ne 0 ]]; then
  PS1+=' \e[m\e[36m$(whoami)\e[m'
else
  PS1+=' \e[5;41m$(whoami)\e[m'
fi

PS1+=' at \e[32m$(hostname)\e[m'
PS1+=' in \e[m\e[33m$(dirs +0)\e[m'

if [[ $EUID -ne 0 ]]; then
  PS1+='\n$ '
else
  PS1+='\n# '
fi

export PS1
