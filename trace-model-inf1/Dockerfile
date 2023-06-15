FROM 763104351884.dkr.ecr.${region}.amazonaws.com/pytorch-inference-neuron:1.13.1-neuron-py38-sdk2.10.0-ubuntu20.04

LABEL description="Base container for Inferentia models"

ENV PYTHONUNBUFFERED=TRUE

ENV PYTHONDONTWRITEBYTECODE=TRUE

# Install HuggingFace python libraries
RUN pip install transformers 

WORKDIR /trace-model-inf1

ENTRYPOINT ["python3", "/trace-model-inf1/trace-model.py"]

