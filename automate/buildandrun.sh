#!/bin/bash

docker build -t simple-site .

docker tag simple-site heppiedoc/simple-site

docker push heppiedoc/simple-site

docker run --name simple-site -d -p 8080:80 heppiedoc/simple-site