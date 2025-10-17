# Home Assistant Add-on: Cursor Tunnel

![Supports amd64 Architecture][amd64-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports aarch64 Architecture][aarch64-shield]

A Home Assistant add-on that runs Cursor CLI tunnel to allow Cursor IDE to connect to your Home Assistant instance via SSH.

## About

This add-on solves WebSocket errors with Alpine Linux by using Ubuntu 24.04 with glibc, ensuring complete compatibility with Cursor Server.

The Cursor CLI tunnel allows you to connect Cursor IDE directly to your Home Assistant instance by creating a secure SSH tunnel, making remote development and configuration easier.

## Installation

Installing this add-on is simple and straightforward:

1. Navigate to your Home Assistant: **Settings** → **Add-ons** → **Add-on Store**
2. Find "Cursor Tunnel" in the list
3. Click on the add-on and press **Install**
4. Wait for the installation to complete (the build may take a few minutes)
5. Click **Start** to launch the add-on

## Configuration

### Options

| Option | Type | Required | Default | Description |
|--------|------|----------|---------|-------------|
| `tunnel_name` | string | No | `haos` | Custom name to identify your Cursor tunnel |

### Configuration Example

**Minimal configuration:**

```yaml
tunnel_name: haos
```

**Custom configuration:**

```yaml
tunnel_name: my-homeassistant
```

## Usage

### Connecting from Cursor IDE

Once the add-on is started, the tunnel is automatically created. To connect:

1. Open **Cursor IDE** on your computer
2. Open the command palette: 
   - Windows/Linux: `Ctrl + Shift + P`
   - macOS: `Cmd + Shift + P`
3. Type and select: `Remote-SSH: Connect to Host...`
4. Enter the connection address provided by your tunnel
5. Select the platform: **Linux**
6. Enter your credentials if prompted
7. You are now connected to your Home Assistant! 🎉

### Status Verification

You can verify that the tunnel is working correctly:

1. Open the add-on in Home Assistant
2. Go to the **Logs** tab
3. You should see messages similar to:

```log
[INFO] Starting Cursor tunnel with name: haos
[INFO] Starting tunnel...
[INFO] Creating tunnel with the name: haos
[INFO] Tunnel active and ready!
```

## Supported Architectures

This add-on supports the following architectures:

| Architecture | Supported | Description |
|--------------|-----------|-------------|
| `amd64` | ✅ | Intel/AMD 64-bit processors (standard PC) |
| `armv7` | ✅ | ARM 32-bit (Raspberry Pi 3/4) |
| `aarch64` | ✅ | ARM 64-bit (Raspberry Pi 4/5, Home Assistant Yellow) |

## Features

- ✅ **Cursor CLI SSH Tunnel** - Direct and secure connection
- ✅ **Ubuntu 24.04 (glibc)** - Full compatibility with Cursor Server
- ✅ **Auto-start** - Tunnel starts with Home Assistant
- ✅ **Native HA Integration** - Configuration via the interface
- ✅ **Accessible Logs** - Easy debugging via HA interface
- ✅ **Multi-architecture** - Works on all HA platforms
- ✅ **Simple Configuration** - Customize tunnel name

## Support and Troubleshooting

### Add-on Won't Start

**Possible causes:**
- Network or Docker connectivity issue
- Insufficient system resources
- Port 22 already in use

**Solutions:**
1. Check the add-on logs
2. Restart the add-on
3. Verify Docker can access the Internet
4. Ensure the SSH port is available

### WebSocket Errors

This add-on uses **Ubuntu 24.04** instead of Alpine Linux, which resolves WebSocket compatibility issues with Cursor Server related to musl/glibc.

If you still encounter errors:
- Verify Cursor IDE is up to date
- Check the add-on logs
- Restart the tunnel

### Tunnel Won't Connect

**Checks:**
1. The add-on is started and running
2. Logs show no errors
3. Cursor CLI is installed locally
4. You're using the correct connection address
5. Your firewall allows SSH connections

### Getting Help

If you encounter problems:
- Check [GitHub Issues](https://github.com/legaetan/ha-cursor-tunnel/issues)
- Review [Cursor documentation](https://cursor.sh/docs)
- Share your logs when requesting help

## Technical Information

### Manual Docker Commands

For advanced users who want to inspect the container:

```bash
# Check tunnel status
docker exec addon_<hash>_cursor-tunnel /cursor-cli/cursor tunnel status

# View running processes
docker exec addon_<hash>_cursor-tunnel ps aux

# Access container shell
docker exec -it addon_<hash>_cursor-tunnel /bin/bash
```

### Persistent Data

Tunnel data is stored in `/data` and persists between add-on restarts.

### Security

- The tunnel uses standard SSH encryption
- No sensitive data is stored in plain text
- The tunnel doesn't require opening additional ports

## Contributing

Contributions are welcome! If you want to improve this add-on:

1. Fork the GitHub repository
2. Create a branch for your feature
3. Commit your changes
4. Submit a Pull Request

## License

MIT License - See the LICENSE file for more details

## Author

Created by **legaetan** to solve Alpine Linux compatibility issues with Cursor Server and facilitate Home Assistant development via Cursor IDE.

- GitHub: [@legaetan](https://github.com/legaetan)
- Repository: [ha-cursor-tunnel](https://github.com/legaetan/ha-cursor-tunnel)

---

_If this add-on is useful to you, feel free to give it a ⭐ on GitHub!_

[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
