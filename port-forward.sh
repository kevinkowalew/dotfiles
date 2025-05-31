#!/bin/bash
services=$(kubectl get svc --all-namespaces | grep -v kube-system | grep -v NAMESPACE)
service_name=$(echo "${services[*]}" | awk '{print $2 " (" $1 ")"}' | fzf | awk '{print($1)}')
if [ -z "$service_name" ]; then
	exit
fi
full_service=$(echo "${services[*]}" | grep ${service_name} | head -n 1)
namespace=$(echo $full_service | awk '{print($1)}')
bind_port=$(echo $full_service | awk '{print($6)}' | cut -d "/" -f1 | cut -d ":" -f1)
container_port=$bind_port

if [ $bind_port -lt 1024 ];
then
	bind_port=1024
fi

while true; do 
	available=$(lsof -i :$bind_port | wc -l)
	if [[ $available -eq "0" ]];
	then
		break
	else
		bind_port=$((bind_port+1))
	fi
done

if [[ $bind_port -eq $container_port ]];
then
	kubectl port-forward -n $namespace svc/$service_name $bind_port:$container_port
else 
	while true; do 
		read  -p "Enter port (default $bind_port): " input
		if [[ $input -eq "" ]];
		then
			while true; do
				read -p "Open in browser? (y/n): " input
				if [ "$input" = "y" ]; then
					open -n -a "Google Chrome" --args "http://localhost:${bind_port}"
					break
				elif [ "$input" = "n" ]; then
					break
				fi
			done

			kubectl port-forward -n $namespace svc/$service_name $bind_port:$container_port
			break
		else
			available=$(lsof -i :$input | wc -l)
			if [[ $available -eq "0" ]];
			then
				while true; do
					read -p "Open in browser? (y/n): " browser
					if [ "$browser" = "y" ]; then
						open -n -a "Google Chrome" --args "http://localhost:${input}"
						break
					elif [ "$browser" = "n" ]; then
						break
					fi
				done

				kubectl port-forward -n $namespace svc/$service_name $input:$container_port
				break
			else
				echo Another process is already bound to $input. Choose another port.
			fi

		fi
	done
fi
