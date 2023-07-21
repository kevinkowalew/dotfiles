source ~/dotfiles/bash/application_leaders.sh
source ~/dotfiles/bash/bash.sh
source ~/dotfiles/bash/docker_rc.sh
source ~/dotfiles/bash/git.sh
source ~/dotfiles/bash/go.sh
source ~/dotfiles/bash/home_rc.sh
source ~/dotfiles/bash/java.sh
source ~/dotfiles/bash/macos_aliases.sh
source ~/dotfiles/bash/python.sh
source ~/dotfiles/bash/tmux_rc.sh

if test -f ~/.env; then
	source ~/.env
fi
