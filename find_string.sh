#!/bin/bash

# Demander à l'utilisateur d'entrer le nom du fichier
echo "Entrez le nom du fichier : " 
read  fichier

# Vérifier que le fichier existe
if [ ! -f "$fichier" ]; then
    echo "Le fichier '$fichier' n'existe pas."
    exit 1
fi

# Demander la chaîne à rechercher
echo "Entrez la chaîne à rechercher :"
read chaine

# Rechercher la chaîne dans le fichier
if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
