#!/bin/bash
# Vérifie si au moins un argument est fourni
if [ $# -eq 0 ]; then
    echo "Usage : $0 $1 $2 $3 $n  argument1 [argument2 ...]"
    exit 1
fi
# Initialisation d’un compteur
i=1
# Parcourt tous les arguments avec une boucle
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done
