#!/bin/bash

source docker.properties

# Edit for using multiple chips
docker run -t -d --name ${docker_container_name} -v /home/ubuntu/best-practices-for-fastapi-on-inferentia/tracing-inf1:/trace-model --device /dev/neuron0 ${registry}/${docker_image_name}
