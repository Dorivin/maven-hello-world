#!/bin/bash

# Copy the new jar to the build location
cp -f ../../my-app/target/*.jar . 

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd ../.. && docker build -t dorivin1/maven-hello-world:$BUILD_TAG
