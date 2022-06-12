#!/bin/bash

helm repo add armo https://armosec.github.io/armo-helm/

helm repo update

helm upgrade --install armo  armo/armo-cluster-components -n armo-system --create-namespace --set clusterName=`kubectl config current-context` --set armoKubescape.serviceMonitor.enabled=true --set armoKubescape.submit=false