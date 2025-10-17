#!/usr/bin/with-contenv bashio

set -e

bashio::log.info "--- DEBUGGING STEP ---"
bashio::log.info "If you see this message, the s6-overlay setup is working correctly."
bashio::log.info "The add-on will now sleep for 5 minutes to test stability."
bashio::log.info "The real 'cursor tunnel' command is temporarily disabled."

sleep 300

bashio::log.info "Sleep finished. Add-on will now stop."
bashio::log.info "This confirms the issue is with the 'cursor tunnel' command itself."
