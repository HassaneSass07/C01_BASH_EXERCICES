#!/bin/bash
# Demander le nom du répertoire à l'utilisateur
read -p "Entrez le nom du répertoire : " dossier

# Vérifier si le répertoire existe
if [ -d "$dossier" ]; then
  # Compter uniquement les fichiers (pas les dossiers)
  nb_fichiers=$(find "$dossier" -type f | wc -l)
  echo "Le dossier $dossier contient $nb_fichiers fichier(s)."
else
  echo "Le dossier

