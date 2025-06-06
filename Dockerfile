# Use the full root image of n8n
FROM n8nio/n8n:1.37.1

USER root

# Install required tools
RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    curl \
    && pip3 install yt-dlp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER node
