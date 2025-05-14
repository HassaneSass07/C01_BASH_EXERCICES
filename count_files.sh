#!/bin/bash
# Ce script compte le nombre de fichiers dans un dossier donné

# Demande à l'utilisateur d'entrer le nom du répertoire
#!/bin/bash

read -p "Entrez le nom du répertoire : " dossier

if [ -d "$dossier" ]; then
  nb_fichiers=$(ls -p "$dossier" | grep -v / | wc -l | xargs)
  echo "Le dossier $dossier contient $nb_fichiers fichier(s)."
else
  echo "Le dossier $dossier n'existe pas."
fi
