#!/bin/bash

echo Loggin AWS ECR
    $(aws ecr get-login --region ap-southeast-1 --no-include-email)
    docker pull $IMAGE_REPO_NAME:$IMAGE_TAG 
    docker run --name react -p 3000:3000 -d $IMAGE_REPO_NAME:$IMAGE_TAG
