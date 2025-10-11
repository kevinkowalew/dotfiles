nodes=("${MASTER}" "${WORKER_1}" "${WORKER_2}" "${WORKER_3}" "${WORKER_4}")

for node in "${nodes[@]}"; do
	ssh pi@$node "sudo reboot"
	code=$?
	if (( $code == 0 || $code == 255 )); then
		echo Successfully restarted $node
	else
		echo Failed to restart $node
	fi
done

