FROM python:3.5

MAINTAINER Sandeep Sihari "kumarsandeep91@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN mkdir /config
ADD /config/requirements.pip /config/
RUN pip install -r /config/requirements.pip
RUN mkdir /src
WORKDIR /src
