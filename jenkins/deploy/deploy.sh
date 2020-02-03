#!/bin/bash

echo "*****************************"
echo " Building docker image    "
echo "*****************************"

echo "Stopping docker container"
docker container stop simple-site

echo "Removing Docker Container"
docker container rm simple-site

echo "Running Docker Container"
docker container run --name simple-site -d -p 8080:80 heppiedoc/simple-site