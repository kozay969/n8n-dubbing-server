FROM docker.n8n.io/n8nio/n8n:latest

USER root
# FFmpeg၊ Python နဲ့ Edge-TTS ပါအောင် သွင်းခြင်း
RUN apk add --no-cache ffmpeg python3 py3-pip
RUN pip3 install edge-tts --break-system-packages

USER node
