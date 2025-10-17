ARG BUILD_FROM=ubuntu:24.04
FROM ${BUILD_FROM}

# Installer les dépendances
RUN apt-get update && apt-get install -y --no-install-recommends     curl     openssh-server     ca-certificates     && rm -rf /var/lib/apt/lists/*

# Créer le répertoire pour cursor-cli
RUN mkdir -p /cursor-cli

# Télécharger et installer cursor-cli
RUN cd /cursor-cli &&     curl -Lk 'https://api2.cursor.sh/updates/download-latest?os=cli-linux-x64'     --output cursor_cli.tar.gz &&     tar -xf cursor_cli.tar.gz &&     chmod +x cursor &&     rm cursor_cli.tar.gz

# Copier le script de démarrage
COPY run.sh /
RUN chmod +x /run.sh

ENTRYPOINT [/run.sh]
