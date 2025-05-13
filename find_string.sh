#!/bin/bash
# Script pour rechercher une chaîne de caractères dans un fichier donné

# Demande à l'utilisateur le nom du fichier
read -p "Entrez le nom du fichier : " fichier

# Vérifie si le fichier existe
if [ ! -f "$fichier" ]; then
    echo "Le fichier '$fichier' n'existe pas."
    exit 0
fi

# Demande à l'utilisateur la chaîne à rechercher
read -p "Entrez la chaîne à rechercher : " chaine

# Utilise grep pour chercher la chaîne dans le fichier
if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
