NODES=("master" "worker1" "worker2" "worker3" "worker4")
NODE=$(printf "%s\n" "${NODES[@]}" | fzf) 
ssh -i $K3S_SSH_PRIVATE_KEY_PATH $K3S_USER@"${NODE}".local
