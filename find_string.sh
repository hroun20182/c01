#!/bin/bash

# Vérifier que l'utilisateur a bien fourni deux arguments
if [ $@ -lt 2 ]; then
    echo "Erreur : nombre d'arguments insuffisant."
    echo "Usage : $0 <chaine_recherchee> <fichier>"
    exit 1
fi

chaine="$1"
fichier="$2"

# Vérifier que le fichier existe et est lisible
if [ ! -f "$fichier" ]; then
    echo "Erreur : le fichier '$fichier' n'existe pas ou n'est pas un fichier régulier."
    exit 2
fi

# Recherche de la chaîne (insensible à la casse, avec numéros de ligne et mise en couleur)
echo "Recherche de '$chaine' dans le fichier '$fichier'..."
grep -i --color=always "$chaine" "$fichier"

# Vérifier le code retour de grep
if [ $? -ne 0 ]; then
    echo "Aucune correspondance trouvée."
fi
