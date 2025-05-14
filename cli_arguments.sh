#!/bin/bash
#!/bin/bash

# Demande à l'utilisateur d'entrer plusieurs valeurs
read -a arguments

# Initialisation du compteur
i=1

# Parcours du tableau 'arguments' avec une boucle
for arg in "${arguments[@]}"; do
    echo "Argument $i : $arg"  # Affiche l'indice et la valeur
    ((i++))  # Incrémente le compteur
done


