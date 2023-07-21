build:
	echo 'source ~/dotfiles/hook.sh' >> ~/.bash_profile
	echo 'source ~/dotfiles/hook.vim' >> ~/.vimrc
	cat ~/dotfiles/.tmux.conf > ~/.tmux.conf
