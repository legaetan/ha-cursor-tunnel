# Cursor Tunnel Addon pour Home Assistant

[![GitHub Release][releases-shield]][releases]
[![License][license-shield]](LICENSE)

Un addon Home Assistant qui lance un tunnel Cursor CLI pour permettre à Cursor IDE de se connecter à votre instance Home Assistant via SSH.

## À propos

Cet addon résout le problème des erreurs WebSocket avec Alpine Linux en utilisant Ubuntu 24.04 avec glibc, assurant une compatibilité complète avec Cursor Server.

## Installation

### Via le repository GitHub

1. Dans Home Assistant, allez à **Settings → Add-ons**
2. Cliquez sur **⋮** (menu) en haut à droite → **Repositories**
3. Ajoutez ce repository :
   ```
   https://github.com/VOTRE-USERNAME/ha-cursor-tunnel
   ```
4. Cliquez sur **Add**
5. Fermez la fenêtre et rafraîchissez la page
6. Vous devriez voir "Cursor Tunnel" dans la liste
7. Cliquez dessus → **Install**
8. Attendez que le build se termine
9. Cliquez sur **Start**

## Configuration

### Options

| Option | Type | Par défaut | Description |
|--------|------|------------|-------------|
| `tunnel_name` | string | `haos` | Nom du tunnel Cursor |
| `auto_rename` | bool | `false` | Renommer automatiquement au démarrage |

### Exemple de configuration

```yaml
tunnel_name: haos
auto_rename: false
```

## Utilisation

### Depuis votre PC avec Cursor IDE

1. Ouvrez **Cursor**
2. Commande Palette (Ctrl+Shift+P / Cmd+Shift+P)
3. Tapez : `Remote-SSH: Connect to Host...`
4. Entrez : `root@home.lega.wtf`
5. Sélectionnez la plateforme : **Linux**
6. Vous êtes connecté !

### Vérifier le statut du tunnel

Depuis les logs de l'addon, vous devriez voir :
```
[2025-10-17] Démarrage du tunnel Cursor avec le nom: haos
[2025-10-17] Démarrage du tunnel...
[2025-10-17] info Creating tunnel with the name: haos
```

## Support

### Logs

Consultez les logs de l'addon dans Home Assistant :
- Ouvrez l'addon
- Onglet **Log**

### Vérification manuelle

```bash
docker exec addon_<hash>_cursor-tunnel /cursor-cli/cursor tunnel status
```

## Dépannage

### L'addon ne démarre pas

1. Vérifiez les logs
2. Assurez-vous que Docker peut télécharger les images
3. Vérifiez la connectivité réseau

### Erreurs WebSocket

Cet addon utilise Ubuntu au lieu d'Alpine, donc ces erreurs devraient être résolues.

### Le tunnel ne se connecte pas

1. Vérifiez que Cursor CLI est installé sur votre PC
2. Vérifiez que vous avez accès SSH à votre serveur
3. Consultez les logs de l'addon

## Fonctionnalités

✅ Tunnel SSH Cursor CLI  
✅ Ubuntu 24.04 (glibc) pour compatibilité complète  
✅ Démarrage automatique  
✅ Intégration Home Assistant  
✅ Logs accessibles  
✅ Configuration via interface HA  
✅ Support multi-architecture (amd64, armv7, arm64)  

## Auteur

Créé pour résoudre les problèmes de compatibilité Alpine Linux avec Cursor Server.

## Licence

MIT License

[releases-shield]: https://img.shields.io/github/release/VOTRE-USERNAME/ha-cursor-tunnel.svg
[releases]: https://github.com/VOTRE-USERNAME/ha-cursor-tunnel/releases
[license-shield]: https://img.shields.io/github/license/VOTRE-USERNAME/ha-cursor-tunnel.svg
