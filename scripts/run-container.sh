#!/bin/bash

docker run --name react -p 3000:3000 -d $IMAGE_REPO_NAME:$IMAGE_TAG
