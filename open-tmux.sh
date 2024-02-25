cd ~/code
project=$(find . -mindepth 2 -maxdepth 2 \( -type d -o -type l \) | fzf)
shortName=$(echo $project | rev | cut -d'/' -f1 | rev)
existing=$(tmux list-windows -F '#{window_index}: #{window_name}'| grep $shortName)
selected=$(tmux display-message -p '#{window_index}')
echo Original: $selected

if [ -n "$existing" ]; then
	id=$(echo $existing | cut -d':' -f1)
	if [ "$id" -eq $selected ]; then
		return
	else
		tmux select-window -t $id
	fi
else
	tmux new-window -c $project -n $shortName 'vim .'
	selected=$(tmux display-message -p '#{window_index}')
fi
cd -
