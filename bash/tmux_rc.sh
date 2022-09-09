function kill_unassigned_sessions() {
	SESSIONS=$(tmux ls | grep -v attached | cut -d":" -f1)
	for SESSION in $SESSIONS
	do
		tmux kill-session -t $SESSION
	done
}

alias tk='kill_unassigned_sessions'
