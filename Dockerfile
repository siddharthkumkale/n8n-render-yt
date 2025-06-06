FROM n8nio/n8n:1.44.0-root

USER root

# Install ffmpeg, python3, pip, curl, and yt-dlp
RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    curl \
    && pip3 install yt-dlp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER node
