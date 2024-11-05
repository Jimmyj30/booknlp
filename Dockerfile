# FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04

FROM python:3.9

# ERROR: Could not build wheels for thinc which use PEP 517 and cannot be installed directly
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip less && \
    pip3 install --upgrade pip

WORKDIR /app

ENV HOME_DIR /app

COPY . /app/booknlp

RUN pip install --no-cache-dir /app/booknlp && \
    python3 -m spacy download en_core_web_sm --break-system-packages

COPY examples /app/examples

CMD ["/bin/bash"]
