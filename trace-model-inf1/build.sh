#!/bin/bash
source docker.properties

DOCKER_BUILDKIT=1 docker build -t ${registry}/${docker_image_name} -f Dockerfile .
