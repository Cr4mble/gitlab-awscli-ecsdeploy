FROM alpine:latest

LABEL maintainer="clemens.christen@cheveo.de"

RUN apk add --no-cache \
    python \
    python-dev \ 
    py-pip \
    groff \
    less \
    && pip install --upgrade pip \
    && pip install awscli \
    && pip install ecs-deploy