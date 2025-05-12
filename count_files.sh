#!/bin/bash
# Vérifie si un argument (nom du dossier) est fourni
if [ -z "$1" ]; then
    echo "Usage : $0 nom_du_dossier"
    exit 1
fi
# Récupère le nom du dossier
REPERTOIRE="$1"
# Vérifie si le dossier existe
if [ ! -d "$REPERTOIRE" ]; then
    echo "Le dossier \"$REPERTOIRE\" n'existe pas."
    exit 1
fi
# Compte le nombre de fichiers (ignore les dossiers)
NB_FICHIERS=$(find "$REPERTOIRE" -type f | wc -l)
# Affiche le résultat
echo "Le dossier $REPERTOIRE contient $NB_FICHIERS fichier(s)."
