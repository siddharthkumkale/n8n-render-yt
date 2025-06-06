FROM n8nio/n8n

USER root

# Install yt-dlp, ffmpeg, curl
RUN apt update && apt install -y ffmpeg curl python3-pip && pip install yt-dlp

USER node
