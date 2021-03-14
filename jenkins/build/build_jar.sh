#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"
WORKSPACE_DIR=/home/ec2-user/jenkins-data/jenkins_home/workspace/Maven-CI-CD/my-app

docker run --rm -v $WORKSPACE_DIR:/app -w /app maven:3-alpine "$@"
