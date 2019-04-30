FROM alpine:latest

MAINTAINER Bernhard Schönberger <b.schoenberger@fupa.net>

# update dependencies
RUN apk update --progress &&
    apk upgrade --progress

# install python2
RUN apk add python
RUN apk add python-dev 

# install python3
RUN apk add python3
RUN apk add python3-dev

# additional dependencies
RUN apk add py-pip curl zip ca-certificates openssh

# Install AWS CLI
RUN pip install awscli --upgrade six
