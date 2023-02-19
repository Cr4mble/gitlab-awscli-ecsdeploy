FROM alpine:3.17.2

LABEL maintainer="clemens.christen@cheveo.de"

RUN apk add --no-cache \
    python3\>=3.10.10-r0 \
    py3-pip\>=22.3.1-r1 \
    docker\>=20.10.21-r3 \
    curl\>=7.87.0-r2 \
    bash\>=5.2.15-r0\
    jq\>=1.6-r2 \
    && pip install --upgrade pip \
    && pip install awscli==1.27.74

RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/3.10.7/ecs-deploy | tee /usr/bin/ecs-deploy
RUN chmod +x /usr/bin/ecs-deploy
