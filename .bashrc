# ~/.bashrc

case $- in
    *i*) ;;
      *) return;;
esac

alias sudo='sudo '
alias hx='helix'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

HISTSIZE=2000
HISTFILESIZE=40000
HISTCONTROL=ignoreboth

shopt -s autocd
shopt -s globstar
shopt -s checkwinsize
shopt -s histappend

PS1='\w \$ '

[ -f "/usr/share/bash-completion/bash_completion" ] && . /usr/share/bash-completion/bash_completion

eval "$(/usr/bin/fzf --bash)"

export GPG_TTY=$(tty)
