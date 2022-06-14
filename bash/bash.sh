export PS1="$ "

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim

set -o vi
set keymap vi-command

alias c='clear'
alias cpwd='echo "cd $(pwd)" | pbcopy'
alias ll='ls -l'
alias e='exit'
alias o='open .'
alias p='pwd'
alias h='history'
