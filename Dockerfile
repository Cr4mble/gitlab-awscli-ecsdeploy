FROM alpine:latest

LABEL maintainer="clemens.christen@cheveo.de"

RUN apk add --no-cache \
    python \
    python-dev \ 
    py-pip \
    groff \
    less \
    docker \
    curl \
    bash \
    jq \
    && pip install --upgrade pip \
    && pip install awscli

RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy | tee /usr/bin/ecs-deploy
RUN chmod +x /usr/bin/ecs-deploy