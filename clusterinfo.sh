###########################################################################################
# Script to check the health status of the cluster and report the objects and resources   #
###########################################################################################
# # clusterrole
# clusterrolebinding
# configmap
# cronjob
# deployment
# ingress
# job
# namespace
# poddisruptionbudget
# priorityclass
# quota
# role
# rolebinding
# secret
# secret docker-registry
# secret generic
# secret tls
# service
# service clusterip
# service externalname
# service loadbalancer
# service nodeport
# serviceaccount
#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;36m'
PLAIN='\033[0m'
bold=$(tput bold)
normal=$(tput sgr0)

deploy="$2"
namespace="$1"

cluster_objects() {
	echo -e "\e[44mCollecting Information from the Cluster:\e[21m"
 	echo "Security Resources"
  	echo "$(kubectl get clusterroles)"
#  	clusterrole=$(kubectl get clusterroles)
 	
	
}

cluster_nodes() {
	nodes=$(kubectl get nodes | grep -v NAME | wc -l)
	worker=$(kubectl get nodes | grep -v NAME | grep worker | wc -l)
	master=$(kubectl get nodes | grep -v NAME | grep master | wc -l)
	node_status=$(for i in $(kubectl get node | grep -v NAME | awk {'print $2'} | sort -u); do echo "$i";done)
        echo -e "\e[1m\e[39mCluster Node Status:\e[21m"
	echo -e "${BLUE}"ALL Nodes"                      :${GREEN}$nodes"
	echo -e "${BLUE}"Worker Nodes"                   :${GREEN}$worker"
	echo -e "${BLUE}"Master Nodes"                   :${GREEN}$master"
	echo -e "${BLUE}"Nodes Status"                   :${GREEN}$node_status"
        echo -e "\e[1m\e[39mNodes Conditions:\e[21m"
	echo -e "${BLUE}$(kubectl describe node | grep kubelet | awk {'print $15'} | sort -u)"
	echo -e "\e[1m\e[39mPods Per Node:\e[21m"
        for node in $(kubectl get node | grep -v NAME | awk {'print $1'})
	do pod_per_node=$(kubectl get pods --all-namespaces --field-selector spec.nodeName=$node -o wide | wc -l)
		echo -e "${BLUE}"$node" \t :${GREEN}$pod_per_node"
	done
	# Nodes Per AZ
	a=$(kubectl get node -l failure-domain.beta.kubernetes.io/zone=eu-central-1a | grep -v NAME | grep -v master | wc -l)
	b=$(kubectl get node -l failure-domain.beta.kubernetes.io/zone=eu-central-1b | grep -v NAME | grep -v master | wc -l)
	c=$(kubectl get node -l failure-domain.beta.kubernetes.io/zone=eu-central-1c | grep -v NAME | grep -v master | wc -l)
	echo -e "\e[1m\e[39mWorker Nodes per AZ:\e[21m"
	echo -e "${BLUE}"eu-central-1a" \t :${GREEN}$a"
	echo -e "${BLUE}"eu-central-1b" \t :${GREEN}$b"
	echo -e "${BLUE}"eu-central-1c" \t :${GREEN}$c"
	#Node Types
	types=$(kubectl describe node | grep beta.kubernetes.io/instance-type | cut -d"=" -f2 | sort | uniq -c | awk -F$'\t' {'print $2 $1'})
	echo -e "\e[1m\e[39mCluster Node Types:\e[21m"
	echo -e "\e[34m$types"
}

pod_with_issues() {
	echo -e "\e[1m\e[39mPods not in Running or Completed State:\e[21m"
        kubectl get pods --all-namespaces --field-selector=status.phase!=Running | grep -v Completed
	}

top_mem_pods() {
        echo -e "\e[1m\e[39mTop Pods According to Memory Limits:\e[21m"
	for node in $(kubectl get node | awk {'print $1'} | grep -v NAME)
	do kubectl describe node $node | sed -n "/Non-terminated Pods/,/Allocated resources/p"| grep -P -v "terminated|Allocated|Namespace" 
	done | grep '[0-9]G' | awk -v OFS=' \t' '{if ($9 >= '2Gi') print "\033[0;36m"$2," ", "\033[0;31m"$9}' | sort -k2 -r | column -t

	}
top_cpu_pods() {
        echo -e "\e[1m\e[39mTop Pods According to CPU Limits:\e[21m"
	for node in $(kubectl get node | awk {'print $1'} | grep -v NAME) 
	do kubectl describe node $node | sed -n "/Non-terminated Pods/,/Allocated resources/p" | grep -P -v "terminated|Allocated|Namespace" 
	done | awk -v OFS=' \t' '{if ($5 ~/^[2-9]+$/) print "\033[0;36m"$2, "\033[0;31m"$5}' | sort -k2 -r | column -t
	}

clear
# cluster_objects
cluster_nodes
# pod_with_issues
# top_mem_pods
# top_cpu_pods
