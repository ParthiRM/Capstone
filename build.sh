#!/bin/bash

# Define variables
IMAGE_NAME="app"
TAG="v1"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Run the Docker container
docker run -d -p 3000:3000 --name $IMAGE_NAME $IMAGE_NAME:$TAG
