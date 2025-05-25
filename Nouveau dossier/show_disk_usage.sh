#!/bin/bash
# Affiche l'utilisation générale du disque
echo "=== Utilisation du disque (tous les systèmes montés) ==="
df -h
echo
# Si un dossier est fourni en argument, affiche son utilisation détaillée
if [ -n "$1" ]; then
    if [ -d "$1" ]; then
        echo "=== Utilisation détaillée du dossier : $1 ==="
        du -sh "$1"
    else
        echo "Erreur : \"$1\" n'est pas un dossier valide."
        exit 1
    fi
else
    echo "Aucun dossier spécifié pour l'analyse détaillée."
fi
 