#!/usr/bin/env bash

# THE GUSSING GAME
get_file_count() {
  echo $(ls -1A | wc -l)
}


correct_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Guess the number of files in the current directory:"


while true; do
  read -p "Enter your guess: " guess

  if [[ $guess -eq $correct_count ]]; then
    echo "Congratulations! You guessed correctly. There are $correct_count files in the current directory."
    break
  elif [[ $guess -lt $correct_count ]]; then
    echo "Too low. Try again!"
  else
    echo "Too high. Try again!"
  fi
done
