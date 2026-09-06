FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install FFmpeg and Python virtual environment
RUN apk add --no-cache ffmpeg python3 py3-pip python3-dev build-base

# Create a virtual environment and install edge-tts
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --no-cache-dir edge-tts

USER node
