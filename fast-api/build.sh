#!/bin/bash
source docker.properties

aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${registry}

DOCKER_BUILDKIT=1 docker build -t ${registry}/${docker_image_name} --build-arg BASE_IMAGE=$BASE_IMAGE -f Dockerfile ..
