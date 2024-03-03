CODE_HOME_DIR=~/code
project=$(find $CODE_HOME_DIR -mindepth 2 -maxdepth 2 \( -type d -o -type l \) | fzf)
if [ -z "$project" ]; then 
	exit
fi
shortName=$(echo $project | rev | cut -d'/' -f1 | rev)
selected=$(tmux display-message -p '#{window_index}')

current=$(tmux display-message -p "#{pane_current_path}")
inProject=$(find $CODE_HOME_DIR -mindepth 2 -maxdepth 2 \( -type d -o -type l \) | grep -E $current$ | wc -l)
if [ $inProject -eq 0 ];then
	tmux send-keys -t $selected "cd $project && clear" Enter
	tmux rename-window $shortName
	exit
else
	existing=$(tmux list-windows -F '#{window_index}: #{window_name}'| grep -E $shortName$ | cut -d":" -f1)
	if [ -n "$existing" ]; then
		if [ "$existing" == "$selected" ]; then
			exit
		else
			tmux select-window -t $existing
			exit
		fi
	else
		tmux new-window -c $project -n $shortName 'vim .'
		exit
	fi
fi
