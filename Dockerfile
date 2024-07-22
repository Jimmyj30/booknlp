FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04

# ERROR: Could not build wheels for thinc which use PEP 517 and cannot be installed directly
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip \
    python3-dev \
    pip install --upgrade pip setuptools wheel

WORKDIR /app

ENV HOME_DIR /app

COPY . /app/booknlp

COPY examples /app/examples
