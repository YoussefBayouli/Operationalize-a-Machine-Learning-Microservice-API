#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
spacegeekops/ml_project


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag api $dockerpath

# Step 3:
# Push image to a docker repository
docker push spacegeekops/ml_project:tagname
