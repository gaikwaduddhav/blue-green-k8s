#!/bin/bash

echo "🚀 Starting setup..."

# Create configmaps
kubectl create configmap blue-html --from-file=blue/index.html --dry-run=client -o yaml | kubectl apply -f -
kubectl create configmap green-html --from-file=green/index.html --dry-run=client -o yaml | kubectl apply -f -

# Apply deployments
kubectl apply -f blue-deployment.yaml
kubectl apply -f green-deployment.yaml

# Apply service
kubectl apply -f service.yaml

echo "✅ Setup complete!"
kubectl get svc
