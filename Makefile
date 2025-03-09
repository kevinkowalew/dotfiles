build:
	mkdir -p ${HOME}/.vim

	chmod +x ./open-tmux.sh
	chmod +x ./open-remote-repo.sh
	chmod +x ./ssh_k3s_node.sh
	chmod +x ./kubectx.sh

	cat ./.bash_profile > ${HOME}/.bash_profile
	cat ./.vimrc > ${HOME}/.vimrc
	cat ./.tmux.conf > ${HOME}/.tmux.conf
	cat ./.amethyst.yml > ${HOME}/.amethyst.yml
	cat ./.gitconfig > ${HOME}/.gitconfig
	cat ./coc-settings.json > ${HOME}/.vim/coc-settings.json
