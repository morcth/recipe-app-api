# This file is a template, and might need editing before it works on your project.
FROM python:3.7-alpine
MAINTAINER Morcth

ENV PYTHONUNBUFFERED 1

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user