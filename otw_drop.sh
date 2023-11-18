#!/bin/bash

# Directory path
d=~/overTheWire/bandit/

# Pointer path
p=$d/pointer

# Read the current pointer value
pv=$(cat "$p")

# Ensure the bandit folder is not empty
if [ "$(ls -A $d)" ]; then
  # Find the most recent file in the bandit folder
  rf=$(ls -t "$d" | head -n1)

  # Ensure the pointer file is not the most recent file
  if [ "$rf" != "$(basename "$p")" ]; then
    # Delete the most recent file
    rm "$d/$rf"

    # Decrement the pointer for the previous iteration
    echo "$((pv - 1))" > "$p"

    echo "Deleted file: $rf"
  else
    echo "Pointer file is the most recent file. Skipping deletion to avoid deleting the pointer file."
  fi
else
  echo "Bandit folder is empty. No files to delete."
fi

