FROM docker.n8n.io/n8nio/n8n:latest-debian

USER root

# Install FFmpeg and Python inside Debian environment
RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install edge-tts
RUN pip3 install --no-cache-dir edge-tts --break-system-packages

USER node
