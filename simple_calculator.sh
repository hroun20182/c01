#!/bin/bash

# Vérifie que 3 arguments sont fournis
if [ $# -ne 3 ]; then
    echo "Usage : $0 nombre1 nombre2 opérateur"
    echo "Opérateurs valides : +  -  *  /"
    exit 1
fi

# Récupération des arguments
N1=$1
N2=$2
OP=$3

# Vérification que les deux premiers arguments sont des nombres
if ! [[ "$N1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$N2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Erreur : Les deux premiers arguments doivent être des nombres."
    exit 1
fi

# Calcul en fonction de l'opérateur
case "$OP" in
    +)
        RESULT=$(echo "$N1 + $N2" | bc)
        ;;
    -)
        RESULT=$(echo "$N1 - $N2" | bc)
        ;;
    \*)
        RESULT=$(echo "$N1 * $N2" | bc)
        ;;
    /)
        if [ "$N2" == "0" ]; then
            echo "Erreur : Division par zéro."
            exit 1
        fi
        RESULT=$(echo "scale=2; $N1 / $N2" | bc)
        ;;
    *)
        echo "Erreur : opérateur invalide. Utilisez +, -, *, ou /"
        exit 1
        ;;
esac

# Affiche le résultat
echo "Résultat : $RESULT"
