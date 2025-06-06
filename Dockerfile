FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    python3 \
    py3-pip \
    ffmpeg \
    curl \
  && pip3 install yt-dlp

USER node
