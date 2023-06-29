#!/bin/bash
source docker.properties

# Use Docker Buildkit to speed up docker builds
# The image will be tagged with docker_image_name specified in docker.properties file
# The prefix is based on the variable name in ../config.properties

# Grab login credentials for ECR that has the Neuron and NeuronX Deep learning images
echo "Getting ECR credentials to fetch torch-neuron and torch-neuronx deep learning container images for region ${region_name}"
aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin 763104351884.dkr.ecr.${AWS_REGION}.amazonaws.com

DOCKER_BUILDKIT=1 docker build --build-arg AWS_REGION=${AWS_REGION} -t ${registry}/${docker_image_name} -f Dockerfile .
