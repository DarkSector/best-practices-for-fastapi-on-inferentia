#!/bin/bash

# pull in all the variables defined in the docker.properties file
source docker.properties

# get the credentials to pull the DL Neuron image from ECR
aws ecr get-login-password --region ${region} | docker login --username AWS --password-stdin 763104351884.dkr.ecr.${region}.amazonaws.com

# build the docker image
# tag it with registry and image name
# Docker BuildKit is used to build the image faster
DOCKER_BUILDKIT=1 docker build -t ${registry}/${docker_image_name} -f Dockerfile .
