FROM python:3.7-slim as cloudmapper

LABEL maintainer="https://github.com/0xdabbad00/"
LABEL Project="https://github.com/duo-labs/cloudmapper"

EXPOSE 8000
WORKDIR /opt/cloudmapper
ENV AWS_DEFAULT_REGION=eu-west-3

RUN apt-get update -y
RUN apt-get install -y build-essential autoconf automake libtool python3-tk jq awscli pkg-config libfreetype6-dev
RUN apt-get install -y bash

COPY . /opt/cloudmapper
RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

RUN bash
