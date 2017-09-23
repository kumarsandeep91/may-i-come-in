FROM python:3.5

MAINTAINER Sandeep Sihari "kumarsandeep91@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN apt-get update && \ 
    apt-get install -y --no-install-recommends \
    apt-file \
    vim && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /config
ADD /config/requirements.pip /config/
RUN pip3 install -r /config/requirements.pip
RUN mkdir /src
WORKDIR /src
