#!/bin/bash

# Deploying K8s manifest files

kubectl get pods -A
kubectl apply -f namespace.yaml
sleep 5

# Deploying Postgres manifest files
kubectl apply -f postgres-secrets.yaml
kubectl apply -f postgres.yaml
kubectl apply -f postgres-service.yaml
sleep 2
kubectl apply -f postgres-storage.yaml
                  OR
# kubectl apply -f local-path-storage.yaml                 
sleep 5

# Deploying Backstage manifest files
kubectl apply -f backstage-secrets.yaml
kubectl apply -f backstage-service.yaml
sleep 2
kubectl apply -f backstage.yaml


# To view all running deployment
kubectl get all -n backstage
kubectl get secrets -n backstage
kubectl get pv,pvc -n backstage
kubectl get sc


