#!/bin/bash
# Ce script effectue une opération arithmétique simple

if [ $# -ne 3 ]; then
    echo "Utilisation : $0 <nombre1> <nombre2> <opérateur>"
    echo "Opérateurs valides : + - * /"
    exit 1
fi

A=$1
B=$2
OP=$3

# Vérifie que les entrées sont des nombres
if ! [[ $A =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ $B =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Erreur : les deux premiers arguments doivent être des nombres."
    exit 1
fi

# Effectue l'opération
case "$OP" in
    +) RESULT=$(echo "$A + $B" | bc) ;;
    -) RESULT=$(echo "$A - $B" | bc) ;;
    \*) RESULT=$(echo "$A * $B" | bc) ;;
    /)
        if [ "$B" == "0" ]; then
            echo "Erreur : division par zéro."
            exit 1
        fi
        RESULT=$(echo "scale=2; $A / $B" | bc)
        ;;
    *)
        echo "Erreur : opérateur non valide. Utilisez +, -, *, /."
        exit 1
        ;;
esac

echo "Résultat : $RESULT"
