FROM tensorflow/tensorflow:2.0.0b1-gpu

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install python-tk python3-pip

COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt
