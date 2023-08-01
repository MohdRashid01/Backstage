#!/bin/bash

# Uninstalling K8s manifest files

kubectl delete -f namespace.yaml
sleep 5

# Uninstalling Postgres manifest files
kubectl delete -f postgres-secrets.yaml
kubectl delete -f postgres.yaml
kubectl delete -f postgres-service.yaml
sleep 2
kubectl delete -f postgres-storage.yaml
                  OR
# kubectl delete -f local-path-storage.yaml                 
sleep 5

# Uninstalling Backstage manifest files
kubectl delete -f backstage-secrets.yaml
kubectl delete -f backstage-service.yaml
sleep 2
kubectl delete -f backstage.yaml
kubectl delete -f namespace.yaml

# To view all delete deployment
kubectl get all -n backstage
kubectl get secrets -n backstage
kubectl get pv,pvc -n backstage
kubectl get sc


