#!/usr/bin/env bash

# Function to count the number of files in the current directory
get_file_count() {
  echo $(ls -1A | wc -l)
}

# Get the correct number of files in the current directory
correct_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Guess the number of files in the current directory:"

# Loop until the user guesses the correct number
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
