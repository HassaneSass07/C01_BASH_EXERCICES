#!/bin/bash
# Script pour effectuer une opération simple : addition, soustraction, multiplication ou division

# Vérifier que l'utilisateur a bien fourni 3 arguments
if [ $# -ne 3 ]; then
    echo "Usage : $0 nombre1 nombre2 opérateur(+ - * /)"
    exit 1
fi

# Récupération des arguments
num1=$1
num2=$2
op=$3

# Vérification que les deux premiers arguments sont des nombres (entiers ou flottants)
if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Erreur : Les deux premiers arguments doivent être des nombres."
    exit 0
fi

# Calcul selon l'opérateur fourni
case "$op" in
    +)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    \*)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    /)
        if [ "$num2" == 0 ]; then
            echo "Erreur : Division par zéro"
            exit 0
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Erreur : Opérateur invalide. Utilisez +, -, *, ou /"
        exit 0
        ;;
esac

# Affichage du résultat
echo "Résultat : $result"
