# ____            _     
#| __ )  __ _ ___| |__  
#|  _ \ / _` / __| '_ \ 
#| |_) | (_| \__ \ | | |
#|____/ \__,_|___/_| |_|
#
set -o vi
set keymap vi-command
export PS1="$ "
export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim

alias g='sh ~/dotfiles/sgit-shim.sh'
alias git='sh ~/dotfiles/sgit-shim.sh'
alias v='vim'
alias d='docker'
alias dc='docker-compose'
alias k='kubectl'
alias t='tmux'
alias c='clear'
alias cpwd='echo "cd $(pwd)" | pbcopy'
alias ll='ls -l'
alias e='exit'
alias o='open .'
alias p='pwd'
alias h='history'
alias env='env | sort'
alias cd='function f() { cd $* && tmux rename-window $(pwd | rev | cut -d"/" -f1 | rev); unset -f f; }; f'
alias rg='function f() { grep -r -n "$*" | grep -v .git; unset -f f; }; f'
alias rG='function f() { recursive_grep_menu "$*"; unset -f f; }; f'
alias m='cat Makefile | grep ":" | grep -v docker | cut -d":" -f1 | sort --reverse | fzf | xargs make'
alias om='git s | grep modified | cut -d":" -f2'
alias or='open_remote_in_chrome'
alias cpwd='echo "cd $(pwd)" | pbcopy'
alias hg='function f() { cat ${HOME}/.bash_history | grep "$*" ; unset -f f; }; f'
alias hG='function f() { history_menu "$*"; unset -f f; }; f'

function recursive_grep_menu() {
	grep -r -n "$@" | grep -v .git | fzf | cut -d":" -f2 -f1 | awk -F":" '{print "+"$2, $1}' | xargs -o vim
}

function history_menu() {
	$(cat $HOME/.bash_history | grep "$@" | fzf)
}


function open_remote_in_chrome() {
	REMOTE_NAME=$(git remote)
	REPO_URL=$(git remote get-url $REMOTE_NAME | cut -d"@" -f2 | tr : /)
	open -n -a "Google Chrome" --args $REPO_URL
}

function filter_bash_vi_mode_prefix() {
	TO_RETURN=$(echo $@ | grep -v keymap | grep -v vi-command | tr '\n' ' ')
	return $TO_RETURN
}

function filter_bash_vi_mode_prefix() {
	TO_RETURN=$(echo $@ | grep -v keymap | grep -v vi-command | tr '\n' ' ')
	return $TO_RETURN
}

# ____             _             
#|  _ \  ___   ___| | _____ _ __ 
#| | | |/ _ \ / __| |/ / _ \ '__|
#| |_| | (_) | (__|   <  __/ |   
#|____/ \___/ \___|_|\_\___|_|   
#                                
alias dd='ENTITY=$(filter_bash_vi_mode_prefix $@); exec -c "docker $ENTITY ls";'
alias dsn='docker rm -f $(docker ps -a -q) && docker volume rm -f $(docker volume ls -q)'
alias dn='(docker rm -f $(docker ps -a -q) && docker image rm -f $(docker image ls -q)) && docker volume rm -f $(docker volume ls -q)'
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=0
alias start-jupyter='docker run -it --rm -p 8888:8888 -p 4040:4040 -v ~/Dropbox/jupyter\ notebooks:/home/jovyan/workspace jupyter/all-spark-notebook'
alias start-swagger-editor='docker run -d -p 80:8080 swaggerapi/swagger-editor'
alias start-nexus='docker run -d -p 8081:8081 --name nexus sonatype/nexus:oss'
alias stop-nexus='docker rm -f $(docker ps | grep nexus | cut -d" " -f1)'
alias start-docker-hub='docker run -d -p 5000:5000 --restart=always --name dockerhub registry:2'
alias stop-docker-hub='docker rm -f $(docker ps | grep dockerhub | cut -d" " -f1)'
alias dd='ENTITY=$(filter_bash_vi_mode_prefix $@); exec -c "docker $ENTITY ls";'
alias code='cd $CODE_HOME_DIR'

#  ____
# / ___| ___
#| |  _ / _ \
#| |_| | (_) |
# \____|\___/
#
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
export GOPRIVATE=github.com/Kowalewski-Development/*
alias gbt='go clean -testcache && go build ./... && go test ./...'
alias gbt='go clean -testcache && go build ./... && go test ./...'
alias gt='go clean -testcache && go test ./...'
alias gb='go build ./...'
alias gg='go generate ./...'
export PATH=$PATH:$HOME/.rd/bin

alias k3s='sh ${HOME}/dotfiles/ssh_k3s_node.sh'

# _____
#|_   _| __ ___  _   ___  __
#  | || '_ ` _ \| | | \ \/ /
#  | || | | | | | |_| |>  <
#  |_||_| |_| |_|\__,_/_/\_\
#
function kill_unassigned_sessions() {
	SESSIONS=$(tmux ls | grep -v attached | cut -d":" -f1)
	for SESSION in $SESSIONS
	do
		tmux kill-session -t $SESSION
	done
}

function kill_all_sessions() {
	SESSIONS=$(tmux ls | cut -d":" -f1)
	for SESSION in $SESSIONS
	do
		tmux kill-session -t $SESSION
	done
}

alias tk='kill_unassigned_sessions'
alias tka='kill_all_sessions'

function source_if_existent() {
	if [ -e $@ ]; then
		source $@
	fi
}

source_if_existent "$HOME/.work_rc"
source_if_existent "$HOME/.env"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi


