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
  if [ "$b" -eq 0 ]; then
    echo "Erreur : division par zéro non autorisée."
    exit 1
  fi
  resultat=$((a / b))
else
  echo "Erreur : opérateur invalide. Utilisez +, -, *, ou /"
  exit 1
fi

# Affichage du résultat
echo "Résultat : $resultat"
