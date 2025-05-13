#!/bin/bash
# Script qui affiche tous les arguments passés en ligne de commande

# Vérifie s’il y a au moins un argument
if [ $# -eq 0 ]; then
    echo "Hello"
    echo "world"
    exit 0
fi

# Compteur pour afficher le numéro de l’argument
i=1

# Boucle sur tous les arguments
for arg in "$@"
do
    echo "Argument $i: $arg"
    ((i++)) # incrémentation du compteur
done
