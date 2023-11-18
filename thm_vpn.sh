#!/bin/bash

# Destination directory
DESTINATION=~/tryHackMe

# Create destination directory if it doesn't exist
mkdir -p "$DESTINATION"

# Move .ovpn files from Downloads to tryHackMe directory
mv ~/Downloads/*.ovpn "$DESTINATION"

# Check if OpenVPN is installed
if command -v openvpn &> /dev/null; then
    # Execute OpenVPN on all .ovpn files in tryHackMe directory
    sudo openvpn "$DESTINATION"/*.ovpn
else
    echo "Error: OpenVPN is not installed!"
fi

