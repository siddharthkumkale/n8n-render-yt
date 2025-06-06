FROM n8nio/n8n:1.37.1

USER root

RUN apk update && apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    py3-setuptools \
    py3-wheel \
    build-base \
    curl \
    ca-certificates \
    openssl \
    && update-ca-certificates

RUN pip3 install --upgrade pip

RUN pip3 install yt-dlp

USER node
