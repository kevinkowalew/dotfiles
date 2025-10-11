nodes=("${MASTER}" "${WORKER_1}" "${WORKER_2}" "${WORKER_3}" "${WORKER_4}")

for node in "${nodes[@]}"; do
	ssh pi@$node "sudo reboot"
	echo $?
done

