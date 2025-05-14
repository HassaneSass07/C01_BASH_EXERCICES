#!/bin/bash

# Demande à l'utilisateur de saisir les deux nombres et l'opérateur
read -p "Entrez le premier nombre : " nombre1
read -p "Entrez le deuxième nombre : " nombre2
read -p "Entrez l'opérateur (+ - * /) : " operateur

# Vérifie que les deux entrées sont bien des entiers
if ! [[ "$nombre1" =~ ^-?[0-9]+$ && "$nombre2" =~ ^-?[0-9]+$ ]]; then
  echo "Erreur : les deux entrées doivent être des nombres entiers."
  exit 1
fi

# Effectue l'opération en fonction de l'opérateur
case "$operateur" in
  +)
    resultat=$((nombre1 + nombre2))
    ;;
  -)
    resultat=$((nombre1 - nombre2))
    ;;
  \*)
    resultat=$((nombre1 * nombre2))
    ;;
  /)
    if [ "$nombre2" -eq 0 ]; then
      echo "Erreur : division par zéro."
      exit 1
    fi
    resultat=$((nombre1 / nombre2))
    ;;
  *)
    echo "Erreur : opérateur invalide. Utilisez +, -, * ou /"
    exit 1
    ;;
esac

# Affiche le résultat
echo "Résultat : $resultat"

