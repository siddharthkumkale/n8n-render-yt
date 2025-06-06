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

# Create and activate virtual environment, then install yt-dlp inside it
RUN python3 -m venv /opt/venv \
    && /opt/venv/bin/pip install --upgrade pip \
    && /opt/venv/bin/pip install yt-dlp

# Optionally, add the virtualenv pip and python to PATH so commands use it by default
ENV PATH="/opt/venv/bin:$PATH"

USER node
