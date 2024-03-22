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
alias env='env | sort'
alias cd='function f() { cd $* && tmux rename-window $(pwd | rev | cut -d"/" -f1 | rev); unset -f f; }; f'
alias rg='function f() { grep -r -n "$*"; unset -f f; }; f'
alias m='cat Makefile | grep ":" | fzf | cut -d":" -f1 | xargs make'

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
