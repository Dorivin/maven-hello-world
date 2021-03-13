#!/bin/bash

# Copy the new jar to the build location
cp -f my-app/target/*.jar . 
echo "current working dir: $(pwd)"
echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd ../.. && docker build -t dorivin1/maven-hello-world:$BUILD_TAG
