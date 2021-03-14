#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"
WORKSPACE_DIR=/var/jenkins_home/workspace/Maven-CI-CD/my-app

docker run --rm -v $WORKSPACE_DIR:$WORKSPACE_DIR -w $WORKSPACE_DIR maven:3-alpine "$@"
