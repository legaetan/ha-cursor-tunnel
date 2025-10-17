# Changelog

## 1.0.9 - 2025-10-17
- **Chore**: Recreated `run.sh` to fix potential line ending issues (final debugging step).

## 1.0.8 - 2025-10-17
- **Chore**: Switched to a minimal `sh` script to debug `s6-overlay` without `bashio`.

## 1.0.7 - 2025-10-17
- **Chore**: Added a debugging script (`sleep 300`) to isolate the startup issue.

## 1.0.6 - 2025-10-17
- **Fix**: Correctly use `