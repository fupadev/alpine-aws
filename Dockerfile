FROM alpine:latest

MAINTAINER Bernhard Schönberger <b.schoenberger@fupa.net>

# Install dependencies
RUN apk update
RUN apk add python
RUN apk add python-dev 
RUN apk add curl
RUN apk add zip
RUN apk add ca-certificates
RUN apk add openssh

# install pip and pip3
RUN apk add py2-pip 
RUN apk add py-pip


# Install AWS CLI
RUN pip install awscli --upgrade six
