#!/bin/bash
echo "This will install kong ingress"
helm repo add kong https://charts.konghq.com
helm repo update
kubectl create namespace kong
helm install kong/kong --generate-name -n kong --set postgresql.enabled=true --set env.database="postgres" -n kong
