NODES=("master" "worker1" "worker2" "worker3" "worker4" "worker5")
NODE=$(printf "%s\n" "${NODES[@]}" | fzf) 

if [[ "$NODE" != "worker5" ]]; then
	ssh -i $K3S_SSH_PRIVATE_KEY_PATH $K3S_USER@"${NODE}".local
else
	ssh -i $K3S_SSH_PRIVATE_KEY_PATH kevin@"${WORKER_5}"
fi
