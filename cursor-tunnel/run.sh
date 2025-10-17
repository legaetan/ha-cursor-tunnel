#!/usr/bin/with-contenv sh
# This file is created from scratch to ensure it has correct LF line endings.

set -e

echo "[SUCCESS] The add-on has started successfully!"
echo "[SUCCESS] This confirms the s6-overlay structure and file formatting are now correct."
echo "[INFO] The add-on will now sleep for 5 minutes for stability testing."

sleep 300

echo "[INFO] Sleep finished. The test is successful."
