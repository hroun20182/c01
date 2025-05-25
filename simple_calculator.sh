#!/bin/bash

# Demande les entrées à l'utilisateur
echo "Entrez le premier nombre :"
read a

echo "Entrez le deuxième nombre :"
read b

echo "Entrez l'opérateur (+, -, *, /) :"
read op

# Condition pour effectuer l'opération
if [ "$op" = "+" ]; then
    result=$((a + b))
elif [ "$op" = "-" ]; then
    result=$((a - b))
elif [ "$op" = "*" ]; then
    result=$((a * b))
elif [ "$op" = "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro"
        exit 1
    fi
    result=$((a / b))
else
    echo "Opérateur invalide. Utilisez +, -, *, /"
    exit 1
fi

# Affiche le résultat
echo "Résultat : $result"
