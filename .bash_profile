export PS1="$ "
alias todo='vim ~/Desktop/.todo.txt'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
