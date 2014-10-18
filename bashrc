export LANG=zh_TW.UTF-8
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
shopt -s checkwinsize
shopt -s autocd

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
alias grep='grep --color'

alias sshtutul='ssh 140.113.207.63 -p 8527 -l tutul'

