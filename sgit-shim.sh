if [[ $1 == "ls" || $1 == "sync" || $1 == "clone" || $1 == "delete" ]]; then
	sgit "$@"
else
	git "$@"
fi
