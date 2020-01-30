################################################################################
#                                                                              #
#                                                                Kevin's .bash_profile                         #
#                                                                              #
################################################################################

# sets primary prompt
export PS1="$ "

# python 3 aliases
alias pip='pip3'
alias python='python3'

# enables bash vim mode 
set -o vi

# removes zsh warning prompt on macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

# dotfiles config git alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# git tab completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
