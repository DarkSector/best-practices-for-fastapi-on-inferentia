#!/bin/bash

source ../config.properties
source docker.properties

# This will remove the last known container and re-run
# docker ps -a | head | docker rm `awk 'NR==2{print $1; exit}'`

mount_directory=`realpath .`

# Edit --device argument when using multiple chips
docker run -t -d \
	--name ${docker_container_name}-${chip_type} \
	-v ${mount_directory}:/trace-model \
	--device /dev/neuron0 ${registry}/${docker_image_name}-${chip_type}
