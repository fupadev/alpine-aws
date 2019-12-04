FROM alpine:3.10.3

MAINTAINER Bernhard Schönberger <b.schoenberger@fupa.net>

# update dependencies
RUN apk update --progress && \
    apk upgrade --progress

# install bash for extended shell syntax support
RUN apk add bash

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

# JQ (JSON command line tool)
RUN apk add jq

RUN apk add nodejs npm --progress

# Install AWS CDK and requirements
RUN npm install -g typescript
RUN npm install -g aws-cdk