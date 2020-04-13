#!/bin/bash

echo Loggin AWS ECR
    $(aws ecr get-login --region ap-southeast-1 --no-include-email)

echo Pull image
    docker pull $IMAGE_REPO_NAME:$IMAGE_TAG 

echo run app
    docker run -p 3000:3000 -d $IMAGE_REPO_NAME:$IMAGE_TAG
