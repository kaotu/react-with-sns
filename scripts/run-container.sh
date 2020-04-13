#!/bin/bash

echo Loggin AWS ECR
    $(aws ecr get-login --region ap-southeast-1 --no-include-email)

if [ "$DEPLOYMENT_GROUP_NAME" == "test-deploy-docker-group" ]
then
   docker pull 131304515891.dkr.ecr.ap-southeast-1.amazonaws.com/reactapp-tesy:latest 
   docker run -p 3000:3000 -d 131304515891.dkr.ecr.ap-southeast-1.amazonaws.com/reactapp-tesy:latest
fi

