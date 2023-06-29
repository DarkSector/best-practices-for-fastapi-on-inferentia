ARG AWS_REGION
FROM 763104351884.dkr.ecr.${AWS_REGION}.amazonaws.com/pytorch-inference-neuronx:1.13.1-neuronx-py38-sdk2.10.0-ubuntu20.04

LABEL description="Base container for Inferentia2 models"

ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE

# Install HuggingFace transformers library
RUN pip install transformers 

# within the docker container we'll mount volume and it will be mounted to /trace-model directory
WORKDIR /trace-model

# run the tracing code mounted to the container
ENTRYPOINT ["python3", "/trace-model/trace-model.py"]

