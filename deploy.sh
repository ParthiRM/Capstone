#!/bin/bash

DOCKER_USERNAME="mrparth"
DOCKER_PASSWORD="Parthi@1996"

if [ "$GIT_BRANCH" == "dev" ]; then
    # Docker commands for dev branch
    docker tag app:v1 "$DOCKER_USERNAME/app:v1"
    docker push "$DOCKER_USERNAME/app:v1"
    docker logout
elif [ "$GIT_BRANCH" == "master" ]; then
    # Docker commands for master branch
    docker tag app:v1 "$DOCKER_USERNAME/app:v1"
    docker push "$DOCKER_USERNAME/app:v1"
    docker logout
else
    echo "Branch not supported for Docker image build and push"
    exit 1
fi

