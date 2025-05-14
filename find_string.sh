#!/bin/bash
# Demande à l'utilisateur le nom du fichier
read fichier

# Demande à l'utilisateur la chaîne à rechercher
read chaine

# Utilise grep pour chercher la chaîne dans le fichier
if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
