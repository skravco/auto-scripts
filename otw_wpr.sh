#! /bin/bash

# Ensure the directory exists
mkdir -p ~/overTheWire/bandit/

# Counter file to keep track of the execution
counter_file=~/overTheWire/bandit/counter

# If the counter file doesn't exist, create and initialize it
if [ ! -f "$counter_file" ]; then
  echo "1" > "$counter_file"
fi

# Read the current counter value
counter=$(cat "$counter_file")

# Write the value of $1 to a file with the current counter value
echo "$1" > ~/overTheWire/bandit/"$counter"

# Increment the counter for the next execution
echo "$((counter + 1))" > "$counter_file"

