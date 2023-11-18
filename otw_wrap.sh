#! /bin/bash

# Ensure the directory exists
mkdir -p ~/overTheWire/bandit/

# Pointer file to keep track of the execution
p=~/overTheWire/bandit/pointer

# If file doesn't exist, create and initialize it
if [ ! -f "$p" ]; then
  echo "1" > "$p"
fi

# Read the current pointer value
pv=$(cat "$p")

# Write the value of pos arg to a file with the current counter value
echo "$1" > ~/overTheWire/bandit/"$pv"

# Increment the pointer for the next execution
echo "$((pv + 1))" > "$p"

