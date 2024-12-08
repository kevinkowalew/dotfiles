TARGET=$(kubectl get svc | grep -v NAME | fzf)
NAME=$(echo $TARGET | awk '{print($1)}')
PORT=$(echo $TARGET | awk '{print($5)}' | cut -d"/" -f1)
echo $NAME $PORT

open https://localhost:$PORT && kubectl port-forward svc/$NAME $PORT:$PORT
