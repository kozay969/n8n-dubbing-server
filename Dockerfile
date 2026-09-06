FROM n8nio/n8n:latest

USER root

# Install ffmpeg, python3, pip and build tools
RUN apk add --no-cache ffmpeg python3 py3-pip python3-dev build-base

# Set up Python Virtual Environment to bypass PEP 668 restrictions
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install edge-tts
RUN pip install --no-cache-dir edge-tts

USER node
