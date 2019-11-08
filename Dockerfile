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
    && pip install --upgrade pip \
    && pip install awscli

RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy | sudo tee /usr/bin/ecs-deploy
RUN sudo chmod +x /usr/bin/ecs-deploy