if [[ $1 == "ls" || $1 == "sync" ]]; then
	sgit "$@"
else
	git "$@"
fi
