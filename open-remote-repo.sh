source ${HOME}/.env
CACHE_FILE=${HOME}/.github_repos

if [ ! -e $CACHE_FILE ]; then
	REPOS=($(curl -L -s \
	  -H "Accept: application/vnd.github+json" \
	  -H "Authorization: Bearer $GITHUB_TOKEN" \
	  -H "X-GitHub-Api-Version: 2022-11-28" \
	  https://api.github.com/orgs/$GITHUB_ORG/repos | jq .[].url | cut -d"/" -f6 | cut -d'"' -f1))
	for REPO in ${REPOS[@]};do
		echo $REPO >> $CACHE_FILE
	done
fi

SELECTED=$(cat $CACHE_FILE | fzf)
if [ ! -z "$SELECTED" ]
then
	open -n -a "Google Chrome" --args "github.com/${GITHUB_ORG}/${SELECTED}"
fi

