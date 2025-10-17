ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install Alpine dependencies
RUN apk add --no-cache \
    curl \
    ca-certificates \
    bash

# Create directory for cursor-cli
RUN mkdir -p /cursor-cli

# Download and install cursor-cli
RUN cd /cursor-cli && \
    curl -Lk 'https://api2.cursor.sh/updates/download-latest?os=cli-linux-x64' \
    --output cursor_cli.tar.gz && \
    tar -xf cursor_cli.tar.gz && \
    chmod +x cursor && \
    rm cursor_cli.tar.gz

# Copy the s6-overlay service definition
COPY run.sh /etc/services.d/cursor-tunnel/run
RUN chmod +x /etc/services.d/cursor-tunnel/run

# Let the base image's s6-overlay entrypoint handle the startup
