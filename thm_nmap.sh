#!/bin/bash

# Check if nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed!"
    exit 1
fi

# Perform the Nmap scan
sudo nmap -sCV -oN "$(pwd)/nmap.txt" "$1"

# Check if the scan was successful
if [ $? -eq 0 ]; then
    echo "Nmap scan completed successfully. Results are in $(pwd)/nmap.txt"
else
    echo "Nmap scan failed. Check the error message above."
fi   
