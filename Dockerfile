FROM python:3.7-alpine
MAINTAINER Mastersam

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /pollsapi
WORKDIR /pollsapi
COPY ./pollsapi/ /pollsapi

RUN adduser -D user
USER user