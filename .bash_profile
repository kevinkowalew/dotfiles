export PS1="$ "
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/usr/local/mysql/bin:$PATH:/usr/local/opt/mysql@5.5/bin/"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
