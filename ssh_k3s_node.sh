NODES=("MASTER" "WORKER_1" "WORKER_2" "WORKER_3" "WORKER_4")
ENV_VAR=$(printf "%s\n" "${NODES[@]}" | fzf) 
IP=$(env | grep $ENV_VAR | head -n 1 | cut -d = -f2)
ssh -i $K3S_SSH_PRIVATE_KEY_PATH $K3S_USER@$IP
