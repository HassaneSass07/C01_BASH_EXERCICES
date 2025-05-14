#!/bin/bash
# Script pour afficher l'utilisation du disque
#!/bin/bash

# Ce script affiche l'utilisation du disque de manière lisible

echo "Analyse de l'utilisation du disque..."

# Vérifie si l'utilisateur a fourni un argument (nom de dossier)
if [ -n "$1" ]; then
  dossier="$1"
  if [ -d "$dossier" ]; then
    echo "Utilisation du disque pour le dossier : $dossier"
    du -sh "$dossier"
  else
    echo "Erreur : '$dossier' n'est pas un dossier valide."
  fi
else
  echo "Utilisation globale du disque :"
  df -h
fi





