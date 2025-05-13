#!/bin/bash
# Script pour afficher l'utilisation du disque

# Affichage général de l'utilisation du disque
echo "=== Utilisation globale du disque ==="
df -h

echo ""

# Optionnel : Affichage de l'utilisation d'un dossier spécifique si fourni
if [ -n "$1" ]; then
    if [ -d "$1" ]; then
        echo "=== Utilisation du dossier '$1' ==="
        du -sh "$1"
    else
        echo "Erreur : '$1' n'est pas un dossier valide."
    fi
else
    echo "Astuce : Vous pouvez aussi passer un dossier en argument pour voir son espace utilisé."
    echo "Exemple : ./show_disk_usage.sh /home"
fi
