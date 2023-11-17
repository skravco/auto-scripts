#! /bin/bash

# Check if sshpass is installed
if ! command -v sshpass &> /dev/null; then
    echo "Error: sshpass is not installed!"
    exit 1
fi

# Assuming you want to pass the password from the file to ssh using sshpass
password=$(cat ~/overTheWire/bandit/$1)

# Using sshpass to provide the password to ssh
sshpass -p "$password" ssh bandit$1@bandit.labs.overthewire.org -p 2220

