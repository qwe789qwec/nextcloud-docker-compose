FROM nextcloud

# 安裝 FFmpeg 和其他需要的套件
RUN apt-get update && \
    apt-get install -y \
    ffmpeg \
    libavcodec-extra \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 設置權限
RUN chown -R www-data:www-data /var/www/html