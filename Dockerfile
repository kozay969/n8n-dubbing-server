FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install ffmpeg and python3
RUN apk add --no-cache ffmpeg python3 py3-pip

# Install edge-tts directly with break-system-packages flag
RUN pip3 install --no-cache-dir edge-tts --break-system-packages

USER node
