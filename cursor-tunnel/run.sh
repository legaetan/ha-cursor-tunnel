#!/usr/bin/with-contenv bashio

set -e

TUNNEL_NAME=$(bashio::config 'tunnel_name')
CURSOR_CLI_PATH="/cursor-cli/cursor"

bashio::log.info "Starting Cursor Tunnel with name: ${TUNNEL_NAME}"
bashio::log.info "The tunnel will now run in the foreground. Check your Cursor IDE or local CLI for connection status."

# Use exec to replace the shell process with the tunnel process.
# This is crucial for s6-overlay to correctly manage the service.
exec ${CURSOR_CLI_PATH} tunnel
