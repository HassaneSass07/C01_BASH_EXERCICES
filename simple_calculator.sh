#!/bin/bash

# Lire trois valeurs sur une seule ligne
read -p "Entrez deux nombres et un opérateur (ex: 5 3 +) :" a b op

# Bloc conditionnel pour traiter chaque opérateur
if [ "$op" = "+" ]; then
  resultat=$((a + b))
elif [ "$op" = "-" ]; then
  resultat=$((a - b))
elif [ "$op" = "*" ]; then
  resultat=$((a * b))
elif [ "$op" = "/" ]; then
 resultat=$((a / b))
  fi
  
# Affichage du résultat
echo "Résultat : $resultat"
