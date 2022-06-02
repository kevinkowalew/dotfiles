alias dsn='docker rm -f $(docker ps -a -q) & docker volume rm -f $(docker volume ls -q) && clear'
alias dn='(docker rm -f $(docker ps -a -q) && docker image rm -f $(docker image ls -q)) && docker volume rm -f $(docker volume ls -q) && clear'
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
