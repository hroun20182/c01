#!/bin/bash
# Nom du dossier à analyser
echo "Entrer le nom du dossier :"
read folder
# Vérifie si le dossier existe
if [ -d "$folder" ]; then
    # Compte le nombre de fichiers (en excluant les sous-dossiers)
    count=$(ls -p "$folder" | grep -v / | wc -l)
    echo "Le dossier $folder contient $count fichier(s)"
else
    echo "Le dossier $folder n'existe pas."
fi