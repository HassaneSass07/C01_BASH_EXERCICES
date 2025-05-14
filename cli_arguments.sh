#!/bin/bash
i=1  # Initialisation de la variable i à 1, qui servira à compter les arguments

# Boucle for pour parcourir tous les arguments passés au script
for arg in "$@"; do
    echo "Argument $i : $arg"  # Affichage de l'argument actuel avec son numéro (i)
    ((i++))  # Incrémentation de la variable i pour le prochain argument
done

