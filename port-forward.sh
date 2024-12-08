#!/bin/bash
flag_c=false

for arg in "$@"; do
  if [[ "$arg" == "-o" ]]; then
    flag_c=true
  fi
done

TARGET=$(kubectl get svc | grep -v NAME | fzf)
NAME=$(echo $TARGET | awk '{print($1)}')
PORT=$(echo $TARGET | awk '{print($5)}' | cut -d"/" -f1)
echo $NAME $PORT

if $flag_c; then
	open https://localhost:$PORT
fi

kubectl port-forward svc/$NAME $PORT:$PORT
