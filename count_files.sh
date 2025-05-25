#!/bin/bash
# Nom du dossier à analyser
echo "Entrer le nom du dossier :"
read folder
# Compte le nombre de fichiers (pas de dossiers) dans le répertoire
nb_fichiers=$(find "$dossier" -maxdepth 1 -type f | wc -l)
