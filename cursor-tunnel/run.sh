#!/bin/bash
set -e

# Configuration
TUNNEL_NAME="${TUNNEL_NAME:-haos}"
LOG_FILE="/var/log/cursor-tunnel.log"

# Créer le répertoire de logs
mkdir -p /var/log

# Afficher le démarrage
echo "[ven. 17 oct. 2025 09:49:06 CEST] Démarrage du tunnel Cursor avec le nom: $TUNNEL_NAME" | tee -a $LOG_FILE

# Renommer le tunnel si nécessaire
/cursor-cli/cursor tunnel rename $TUNNEL_NAME 2>&1 | tee -a $LOG_FILE || true

# Démarrer le tunnel et afficher les logs
echo "[ven. 17 oct. 2025 09:49:06 CEST] Démarrage du tunnel..." | tee -a $LOG_FILE
/cursor-cli/cursor tunnel 2>&1 | tee -a $LOG_FILE
