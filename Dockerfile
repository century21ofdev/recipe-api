FROM python:3
MAINTAINER century21ofdev

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./src /app

#RUN adduser -D user
#USER user
#or  you can directly set like that # USER your_username_here
USER 90538
