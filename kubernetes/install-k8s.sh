#!/bin/bash

# Deploying K8s manifest files

kubectl get pods -A
kubectl apply -f kubernetes/namespace.yaml
sleep 5

# Deploying Postgres manifest files
kubectl apply -f kubernetes/postgres-secrets.yaml
kubectl apply -f kubernetes/postgres.yaml
kubectl apply -f kubernetes/postgres-service.yaml
sleep 2
kubectl apply -f kubernetes/postgres-storage.yaml
                  OR
# kubectl apply -f kubernetes/local-path-storage.yaml                 
sleep 5

# Deploying Backstage manifest files
kubectl apply -f kubernetes/backstage-secrets.yaml
kubectl apply -f kubernetes/backstage-service.yaml
sleep 2
kubectl apply -f kubernetes/backstage.yaml


# To view all running deployment
kubectl get all -n backstage
kubectl get secrets -n backstage
kubectl get pv,pvc -n backstage
kubectl get sc


