#!/bin/bash
#Demande à l'utilisateur d'entrer a,b,et op
read a b op
#Verification de Type d'operateur
if [ "$op" = "+" ]; then
    resulta=$(($a + $b)) #Addition
elif [ "$op" = "-" ]; then
    resulta=$(($a - $b)) #Soustraction
elif [ "$op" = "/" ]; then
    resulta=$(($a / $b)) #Division
elif [ "$op" = "*" ]; then
    resulta=$(($a * $b)) #Multiplication
fi
echo "Résultat : $resulta" #Resultat de l'operation