sudo pacman --query --quiet --explicit > $(dirname "$BASH_SOURCE")/pacman-quiet-explicit.txt
pacman --query --explicit >  $(dirname "$BASH_SOURCE")/pacman-explicit.txt
pacman --query --info --explicit > $(dirname "$BASH_SOURCE")/pacman-info-explicit.txt