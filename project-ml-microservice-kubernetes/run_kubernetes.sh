#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=elysiantech/flaskapp:latest

# Step 2
# Run the Docker Hub container with kubernetes
chown root:root /tmp/juju-mk*
minikube kubectl -- run app --image=elysiantech/flaskapp:latest --port=80

# Step 3:
# List kubernetes pods
chown root:root /tmp/juju-mk*
minikube kubectl -- get pods
# Step 4:
# Forward the container port to a host
chown root:root /tmp/juju-mk*
sleep 100
minikube kubectl -- port-forward app 8000:80
