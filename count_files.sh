#!/bin/bash
# Ce script compte le nombre de fichiers dans un répertoire donné

# Vérifie si un argument est fourni
if [ $# -ne 1 ]; then
    echo "Utilisation : $0 <nom_du_répertoire>"
    exit 1
fi

DIR=$1

# Vérifie que le répertoire existe
if [ ! -d "$DIR" ]; then
    echo "Erreur : le répertoire '$DIR' n'existe pas."
    exit 1
fi

# Compte les fichiers (non récursif)
COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)

echo "Le dossier $DIR contient $COUNT fichier(s)."
