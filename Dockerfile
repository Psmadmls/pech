# Base image
FROM thuonghai2711/ubuntu-novnc-pulseaudio:22.04

# Set environment variables
ENV VNC_PASSWD=Preecha_0633
ENV PORT=10000
ENV AUDIO_PORT=1699
ENV WEBSOCKIFY_PORT=6900
ENV VNC_PORT=5900
ENV SCREEN_WIDTH=1024
ENV SCREEN_HEIGHT=768
ENV SCREEN_DEPTH=24

# Expose necessary ports
EXPOSE 10000
EXPOSE 1699
EXPOSE 6900
EXPOSE 5900

# Optionally, you can add any additional setup or commands here if needed
