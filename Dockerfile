FROM n8nio/n8n:latest

USER root

# Install ffmpeg, python3, pip and build tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg python3 python3-pip python3-venv python3-dev build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set up Python Virtual Environment to bypass PEP 668 restrictions
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install edge-tts
RUN pip install --no-cache-dir edge-tts

USER node
