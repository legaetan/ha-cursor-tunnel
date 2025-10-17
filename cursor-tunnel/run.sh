#!/usr/bin/with-contenv bashio

set -e

TUNNEL_NAME=$(bashio::config 'tunnel_name')
CURSOR_CLI_PATH="/cursor-cli/cursor"

bashio::log.info "Starting Cursor Tunnel with name: ${TUNNEL_NAME}"

# The cursor CLI might need to be configured or logged in first.
# This command will start the tunnel and keep the process in the foreground,
# which is necessary to keep the addon running.
# The name is managed via the Cursor IDE or local CLI, not here.
${CURSOR_CLI_PATH} tunnel
