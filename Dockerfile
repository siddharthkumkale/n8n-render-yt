FROM n8nio/n8n:latest

USER root

# Update apk index, install python3, pip, ffmpeg, curl, then install yt-dlp via pip
RUN apk update && apk add --no-cache python3 py3-pip ffmpeg curl \
  && pip3 install yt-dlp

USER node
