alias dsn='docker rm -f $(docker ps -a -q) & docker volume rm -f $(docker volume ls -q)'
alias dn='(docker rm -f $(docker ps -a -q) && docker image rm -f $(docker image ls -q)) && docker volume rm -f $(docker volume ls -q)'

export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0

alias start-jupyter='docker run -it --rm -p 8888:8888 -p 4040:4040 -v ~/Dropbox/jupyter\ notebooks:/home/jovyan/workspace jupyter/all-spark-notebook'

alias start-swagger-editor='docker run -d -p 80:8080 swaggerapi/swagger-editor'

alias start-nexus='docker run -d -p 8081:8081 -p 8082:8082 -p 8083:8083 --name my-nexus  -v ~/my-nexus-data:/nexus-data sonatype/nexus3:3.32.0'
alias stop-nexus='docker rm -f $(docker ps | grep nexus | cut -d" " -f1)'

alias start-docker-hub='docker run -d -p 5000:5000 --restart=always --name dockerhub registry:2'
alias stop-docker-hub='docker rm -f $(docker ps | grep dockerhub | cut -d" " -f1)'



