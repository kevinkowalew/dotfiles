build:
	chmod +x ./open-tmux.sh
	chmod +x ./open-remote-repo.sh
	chmod +x ./ssh_k3s_node.sh
	cat ./.bash_profile > ${HOME}/.bash_profile
	cat ./.vimrc > ${HOME}/.vimrc
	cat ./.tmux.conf > ${HOME}/.tmux.conf
	source ~/.bash_profile
