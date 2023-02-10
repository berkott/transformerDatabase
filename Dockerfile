FROM ghcr.io/pytorch/pytorch-nightly:5837a66-cu11.6.2
# FROM nvidia/cuda:11.2.1-runtime-ubuntu20.04

# For this one when running don't port over the whole directory
COPY . /project
RUN cd /project
RUN pip install -r requirements.txt
RUN cd /project/data/shakespeare/ && \
    python prepare.py
RUN cd /project/data/wikipedia/ && \
    python prepare.py
