#!/bin/bash
# Ce script affiche l'utilisation du disque de manière lisible

# Si un répertoire est passé en argument, utiliser ce répertoire
# Sinon, utiliser le répertoire courant
TARGET=${1:-.}

if [ ! -d "$TARGET" ]; then
    echo "Erreur : '$TARGET' n'est pas un répertoire."
    exit 1
fi

echo "Utilisation du disque pour : $TARGET"
du -sh "$TARGET"

echo "Utilisation du disque globale :"
df -h | grep '^/dev'
