FROM nextcloud:latest

RUN a2enmod rewrite && \
    a2enmod headers && \
    a2enmod env && \
    a2enmod dir && \
    a2enmod mime

RUN apt-get update && apt-get install -y \
        ffmpeg \
        fonts-noto-cjk \
        fonts-noto-mono \
        fonts-noto-hinted && \
    rm -rf /var/lib/apt/lists/*
