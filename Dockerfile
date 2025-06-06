# Base n8n image
FROM n8nio/n8n:latest

# Install dependencies: ffmpeg, python3, pip, yt-dlp, curl
USER root

RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    curl \
    && pip3 install yt-dlp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER node
