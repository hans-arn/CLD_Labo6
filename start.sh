#!/bin/bash
kubectl apply -f redis-deploy.yaml
kubectl apply -f redis-svc.yaml

kubectl apply -f api-deploy.yaml
kubectl apply -f api-svc.yaml

kubectl apply -f frontend-deploy.yaml
kubectl apply -f frontend-svc.yaml
kubectl get all

#kubectl port-forward pod/frontend 8080:8080
