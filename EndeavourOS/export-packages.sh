sudo pacman --query --quiet --explicit > $(dirname "$0")/pacman-quiet-explicit.txt
pacman --query --explicit >  $(dirname "$0")/pacman-explicit.txt
pacman --query --info --explicit > $(dirname "$0")/pacman-info-explicit.txt