################################################################################
#                                                                              #
#                                                                Kevin's .bash_profile                         #
#                                                                              #
################################################################################

# sets primary prompt
export PS1="$ "

# removes zsh warning prompt on macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

# todo list alias
alias todo='vim ~/Desktop/.todo.txt'

# dotfiles config git alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# git tab completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
