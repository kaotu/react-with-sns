#!/bin/bash

echo Loggin AWS ECR
    $(aws ecr get-login --region ap-southeast-1 --no-include-email)

echo $IMAGE_REPO_NAME
echo $IMAGE_TAG

if [ "$DEPLOYMENT_GROUP_NAME" == "test-deploy-docker-group" ]
then
   docker pull 131304515891.dkr.ecr.ap-southeast-1.amazonaws.com/reactapp-test:latest
   docker run -p 3000:3000 -d 131304515891.dkr.ecr.ap-southeast-1.amazonaws.com/reactapp-test:latest

fi

