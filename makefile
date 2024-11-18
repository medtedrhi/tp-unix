README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n**Date et heure d'exécution de make:** $$(date)" >> README.md
	echo "\n**Nombre de lignes de code dans guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
