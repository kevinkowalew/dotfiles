build:
	chmod +x ./open-tmux.sh
	chmod +x ./open-remote-repo.sh
	cat ./.bash_profile > ${HOME}/.bash_profile
	cat ./.vimrc > ${HOME}/.vimrc
	cat ./.tmux.conf > ${HOME}/.tmux.conf
