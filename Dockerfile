FROM alpine:latest

MAINTAINER Bernhard Schönberger <b.schoenberger@fupa.net>

# Install dependencies
RUN apk update
# install python2
RUN apk add python
RUN apk add python-dev 

# install python3
RUN apk add python3
RUN apk add python3-dev

RUN apk add py-pip

RUN apk add curl
RUN apk add zip
RUN apk add ca-certificates
RUN apk add openssh

# Install AWS CLI
RUN pip install awscli --upgrade six
