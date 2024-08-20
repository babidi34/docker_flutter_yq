# Étape 1 : Utiliser l'image Flutter comme base
FROM ghcr.io/cirruslabs/flutter:3.22.2

ENV yq_version 4.44.3
# Étape 2 : Installer curl et yq
RUN apt-get update && \
    apt-get install -y curl rsync && \
    curl -sSLo /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/v$yq_version/yq_linux_amd64 && \
    chmod +x /usr/local/bin/yq

# Étape 3 : Définir le répertoire de travail
WORKDIR /app

# Étape 4 : Commande par défaut (optionnel)
CMD ["flutter", "--version"]