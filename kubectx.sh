#!/bin/bash
flag_c=false

for arg in "$@"; do
  if [[ "$arg" == "-c" ]]; then
    flag_c=true
  fi
done

if $flag_c; then
	kubectl config view -o json | jq -r .contexts[].context.namespace
else
	NAMESPACE=$(kubectl get namespace | grep -v NAME | grep -v kube-public | grep -v kube-node-lease | awk '{print($1)}' | sort | fzf)
	kubectl config set-context --current --namespace="${NAMESPACE}" > /dev/null
	echo Switched to $NAMESPACE namespace.
fi
