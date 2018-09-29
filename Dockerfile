FROM nextcloud:latest

RUN apt-get update && apt-get install -y \
        ffmpeg \
        fonts-noto-cjk \
        fonts-noto-mono \
        fonts-noto-hinted && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]