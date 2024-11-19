if [[ $1 == "ls" || $1 == "sync" || $1 == "clone" ]]; then
	sgit "$@"
else
	git "$@"
fi
