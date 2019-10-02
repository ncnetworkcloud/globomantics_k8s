#!/bin/bash
# Small script to deploy k8s manifest files and quickly
# get the status of those objects to ensure they were deployed

kubectl apply -f k8s/manifest
kubectl get pods
kubectl get svc
