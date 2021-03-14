#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"
WORKSAPCE_DIR=/var/jenkins_home/workspace/Maven-CI-CD/my-app

docker run --rm -w $WORKSPACE_DIR maven:3-alpine "$@"
