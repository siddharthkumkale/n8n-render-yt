FROM n8nio/n8n:1.37.1

# Switch to root user to install packages
USER root

# Install required tools using Alpine's apk
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    curl && \
    pip3 install yt-dlp

# Switch back to node user (recommended for n8n)
USER node
