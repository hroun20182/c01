#!/bin/bash
# Nom du dossier à analyser
echo "Entrez le nom du dossier : "
read folder
# Vérifie si le dossier existe
if [ -d "$folder" ]; then
    count=0
    for item in "$folder"/*; do
        if [ -f "$item" ]; then
            count=$((count + 1))
        fi
    done
    echo "Le dossier $folder contient $count fichier(s)"
else
    echo "Le dossier $folder n'existe pas."
fi
