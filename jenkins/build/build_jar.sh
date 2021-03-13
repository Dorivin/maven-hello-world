#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

JAVA_PROJECT_DIR=/home/jenkins/Refael_Exercise/maven-hello-world/my-app

docker run --rm  -v $JAVA_PROJECT_DIR:/app -v var/run/docker.sock:var/run/docker.sock -w /app maven:3-alpine "$@"
