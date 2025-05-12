#!/bin/bash

# Vérifie si deux arguments sont fournis
if [ $# -ne 2 ]; then
    echo "Usage : $0 nom_du_fichier chaine_a_rechercher"
    exit 1
fi

FICHIER="$1"
CHAINE="$2"

# Vérifie si le fichier existe
if [ ! -f "$FICHIER" ]; then
    echo "Le fichier \"$FICHIER\" n'existe pas."
    exit 1
fi

# Recherche la chaîne avec grep
if grep -q "$CHAINE" "$FICHIER"; then
    echo "La chaîne '$CHAINE' a été trouvée dans $FICHIER."
else
    echo "La chaîne '$CHAINE' n'a pas été trouvée dans $FICHIER."
fi
