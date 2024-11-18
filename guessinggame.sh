#!/bin/bash

# Fonction qui contient le jeu de devinettes
function guess_files {
  local file_count=$(ls -1 | wc -l)  # Compter les fichiers dans le répertoire actuel
  local guess=-1

  echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
  
  # Boucle pour demander à l'utilisateur de deviner
  while [[ $guess -ne $file_count ]]; do
    read -p "Votre réponse : " guess

    if [[ $guess -lt $file_count ]]; then
      echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
      echo "Trop haut ! Essayez encore."
    fi
  done

  echo "Félicitations, vous avez trouvé le bon nombre de fichiers : $file_count"
}

# Exécuter la fonction
guess_files
