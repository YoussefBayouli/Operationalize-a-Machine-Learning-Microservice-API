#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="spacegeekops/ml_project"
# Step 2
# Run the Docker Hub container with kubernetes
sudo docker login
kubectl run mlprojectservice --image=$dockerpath --port=80
echo 'Step2 done'
# Step 3:
# List kubernetes pods
#kubectl wait --for=condition=ready pod --all
kubectl get pods
echo 'step 3 done'
# Step 4:
# Forward the container port to a host
kubectl port-forward mlprojectservice 8000:80
echo 'step 4 done'
