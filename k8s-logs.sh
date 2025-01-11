#!/bin/bash
deployments=$(kubectl get deployments --all-namespaces | grep -v kube-system | grep -v NAMESPACE)
deployment_name=$(echo "${deployments[*]}" | awk '{print($2)}' | fzf)
full_deployment=$(echo "${deployments[*]}" | grep ${deployment_name} | head -n 1)
namespace=$(echo $full_deployment | awk '{print($1)}')
kubectl logs -f -n $namespace deployment/$deployment_name --all-containers=true
