# Changelog

## 1.0.6 - 2025-10-17
- **Fix**: Correctly use `s6-overlay` to prevent "PID 1" error on startup.
- **Fix**: Use `exec` in `run.sh` for proper service management by Home Assistant.

## 1.0.5 - 2025-10-17
- **Feat**: Switched to native `cursor tunnel` instead of running a local SSH server.
- **Fix**: Removed `openssh-server` dependency from Dockerfile.
- **Fix**: Removed `ports` mapping from `config.yaml` to avoid conflicts and improve security.

## 1.0.4 - 2025-10-17
- **Fix**: Changed host port mapping from `22` to `2222` to resolve `address already in use` error.

## 1.0.3 - 2025-10-17
- **Fix**: Switched Dockerfile to use Alpine's `apk` package manager instead of `apt-get`.
- **Chore**: Removed unused `build.yaml` file to rely on Home Assistant's default base image.

## 1.0.2 - 2025-10-17
- **Fix**: Switched from `build.json` to `build.yaml` to follow community standards.

## 1.0.1 - 2025-10-17
- **Fix**: Corrected `build.json` syntax by adding the required `args: {}` section.

## 1.0.0 - 2025-10-17
- **Feat**: Initial release.
- **Feat**: Cursor CLI SSH Tunnel for Home Assistant.
- **Feat**: Multi-architecture support (amd64, armv7, aarch64).
- **Feat**: Tunnel name configuration via HA interface.
