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
