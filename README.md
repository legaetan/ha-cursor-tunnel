# Home Assistant Cursor Tunnel Add-On

[![GitHub Release](https://img.shields.io/github/release/legaetan/ha-cursor-tunnel.svg)](https://github.com/legaetan/ha-cursor-tunnel/releases)
[![License](https://img.shields.io/github/license/legaetan/ha-cursor-tunnel.svg)](LICENSE)

This add-on integrates the Cursor CLI tunnel directly into Home Assistant, allowing you to connect Cursor IDE to your Home Assistant instance via SSH.

## 🚀 About

This add-on solves WebSocket compatibility issues with Alpine Linux by using Ubuntu 24.04 with glibc, ensuring full compatibility with Cursor Server.

## 📦 Installation

To install this third-party add-on repository:

1. Open **Home Assistant** → **Settings** → **Add-ons** → **Add-on Store**
2. Click the menu (⋮ three dots in the top-right corner) and select **Repositories**
3. Paste the GitHub repository link in the field at the bottom:
   ```
   https://github.com/legaetan/ha-cursor-tunnel
   ```
4. Click **Add**
5. Refresh the page if necessary
6. The add-on will appear in the list under **Cursor Tunnel for Home Assistant**
7. Click on the add-on → **Install**
8. Configure options if needed
9. Start the add-on

## 🔧 Configuration

### Available Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `tunnel_name` | string | `haos` | Cursor tunnel name |

### Configuration Example

```yaml
tunnel_name: haos
```

## 💻 Usage

### From Cursor IDE

1. Open **Cursor**
2. Command Palette (Ctrl+Shift+P / Cmd+Shift+P)
3. Type: `Remote-SSH: Connect to Host...`
4. Enter your configured SSH address
5. Select platform: **Linux**
6. You're connected!

### Status Check

Check the add-on logs in Home Assistant:
- Open the add-on
- Go to **Logs** tab

## 🏗️ Supported Architecture

✅ `amd64` - Intel/AMD 64-bit  
✅ `armv7` - ARM 32-bit (Raspberry Pi 3/4)  
✅ `aarch64` - ARM 64-bit (Raspberry Pi 4/5)

## 🐛 Troubleshooting

### Add-on Won't Start

1. Check the logs
2. Ensure Docker can download images
3. Verify network connectivity

### WebSocket Errors

This add-on uses Ubuntu instead of Alpine, so these errors should be resolved.

### Tunnel Won't Connect

1. Verify Cursor CLI is installed on your PC
2. Check you have SSH access to your server
3. Review the add-on logs

## 📝 Features

✅ Cursor CLI SSH Tunnel  
✅ Ubuntu 24.04 (glibc) for full compatibility  
✅ Auto-start on boot  
✅ Home Assistant integration  
✅ Accessible logs  
✅ Configuration via HA interface  
✅ Multi-architecture support (amd64, armv7, aarch64)  

## 🤝 Contributing

Contributions are welcome! Feel free to submit pull requests for version updates, bug fixes, or new features.

## 👤 Author

**legaetan**
- GitHub: [@legaetan](https://github.com/legaetan)
- Email: legaetan@gmail.com

## 📄 License

MIT License

---

Created to solve Alpine Linux compatibility issues with Cursor Server and facilitate Home Assistant development via Cursor IDE.
