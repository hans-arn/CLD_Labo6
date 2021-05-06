#!/bin/bash
kubectl create -f redis-pod.yaml
kubectl create -f redis-svc.yaml

kubectl create -f api-pod.yaml
kubectl create -f api-svc.yaml

kubectl create -f frontend-pod.yaml
kubectl get all

#kubectl port-forward pod/frontend 8080:8001
