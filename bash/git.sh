alias om='git s | grep modified | cut -d":" -f2'
alias or='open_remote_in_chrome'

function open_remote_in_chrome() {
	REMOTE_NAME=$(git remote)
	REPO_URL=$(git remote get-url $REMOTE_NAME | cut -d"@" -f2 | tr : /)
	open -n -a "Google Chrome" --args $REPO_URL
}

function filter_bash_vi_mode_prefix() {
	TO_RETURN=$(echo $@ | grep -v keymap | grep -v vi-command | tr '\n' ' ')
	return $TO_RETURN
}

alias dd='ENTITY=$(filter_bash_vi_mode_prefix $@); exec -c "docker $ENTITY ls";'
alias code='cd $CODE_HOME_DIR'
