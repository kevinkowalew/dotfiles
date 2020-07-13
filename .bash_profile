# sets primary prompt
export PS1="$ "

# python 3 aliases
alias pip='pip3'
alias python='python3'

# enables bash vim mode 
set -o vi

# disables bash vim alias
set keymap vi-command

# removes zsh warning prompt on macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

# dotfiles config git alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# jupyter local env lauch alias
alias jupyter='docker run -it --rm -p 8888:8888 -p 4040:4040 -v ~/Dropbox/jupyter\ notebooks:/home/jovyan/workspace jupyter/all-spark-notebook'

export M2_HOME=/Applications/apache-maven-3.6.3
export PATH=$PATH:$M2_HOME/bin
export JAVA_HOME=$(/usr/libexec/java_home)

# git tab completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# random helpful functions
mvn-generate-project() {
	if [ $# != 1 ] 
	then	
		echo 'Invalid Usage: mvn-generate-project <project-name>' 
	else
		mvn -B archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DgroupId=com.development.kowalewski.$1 -DartifactId=$1
	fi
}

# opens tmux by default
[[ $TERM != "screen" ]] && exec tmux
