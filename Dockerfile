FROM n8nio/n8n:1.37.1

USER root

# Step-by-step install to see which command fails
RUN apk update

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    py3-setuptools \
    py3-wheel \
    build-base \
    curl

RUN pip3 install --upgrade pip

RUN pip3 install yt-dlp

USER node
