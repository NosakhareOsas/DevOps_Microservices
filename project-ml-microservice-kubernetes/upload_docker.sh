#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=elysiantech/flaskapp:v1

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag elysiantech/flaskapp:v1 elysiantech/flaskapp:latest
docker login -u elysiantech

# Step 3:
# Push image to a docker repository
docker push elysiantech/flaskapp:latest
