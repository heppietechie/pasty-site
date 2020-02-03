#!/bin/bash

echo "*****************************"
echo " Push docker image to hub    "
echo "*****************************"

echo "Logging in to docker hub"
docker login -u heppiedoc -p $PASS

echo "Tag docker image"
docker tag simple-site heppiedoc/simple-site

echo "Push docker image to Hub"
docker push heppiedoc/simple-site





