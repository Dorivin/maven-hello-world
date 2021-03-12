#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-hello-world"

echo "** Logging in ***"
docker login -u dorivin1 -p $DOCKERHUB_PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG dorivin1/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push dorivin1/$IMAGE:$BUILD_TAG
