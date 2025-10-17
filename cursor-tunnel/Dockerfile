ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    openssh-server \
    ca-certificates \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Create directory for cursor-cli
RUN mkdir -p /cursor-cli

# Download and install cursor-cli
RUN cd /cursor-cli && \
    curl -Lk 'https://api2.cursor.sh/updates/download-latest?os=cli-linux-x64' \
    --output cursor_cli.tar.gz && \
    tar -xf cursor_cli.tar.gz && \
    chmod +x cursor && \
    rm cursor_cli.tar.gz

# Copy startup script
COPY run.sh /
RUN chmod +x /run.sh

# Set entrypoint
CMD ["/run.sh"]
