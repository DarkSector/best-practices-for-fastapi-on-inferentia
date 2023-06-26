FROM 763104351884.dkr.ecr.us-west-2.amazonaws.com/pytorch-inference-neuronx:1.13.1-neuronx-py38-sdk2.10.0-ubuntu20.04

LABEL description="Base container for Inferentia2 models"

ENV PYTHONUNBUFFERED=TRUE

ENV PYTHONDONTWRITEBYTECODE=TRUE

# Install HuggingFace transformers library
RUN pip install transformers 

WORKDIR /trace-model

ENTRYPOINT ["python3", "/trace-model/trace-model.py"]

