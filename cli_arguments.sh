#!/bin/bash
# Ce script affiche les arguments ligne par ligne

i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done
