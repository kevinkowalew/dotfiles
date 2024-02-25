export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
export GOPRIVATE=github.com/Kowalewski-Development/*
alias gbt='go clean -testcache && go build ./... && go test ./...'
