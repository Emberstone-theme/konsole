#!/bin/bash

# Download and extract the latest version of Emberstone for Konsole
echo "Downloading Emberstone for Konsole..."
wget -O /tmp/emberstone-konsole.zip https://github.com/Emberstone-theme/konsole/archive/main.zip
unzip /tmp/emberstone-konsole.zip -d /tmp/

# Copy the colorscheme to the appropriate directory
echo "Installing Emberstone.colorscheme..."
mkdir -p ~/.local/share/konsole
cp /tmp/konsole-main/Emberstone.colorscheme ~/.local/share/konsole/

# Clean up temporary files
echo "Cleaning up..."
rm -rf /tmp/emberstone-konsole.zip /tmp/konsole-main

echo "Installation complete. You can now select the Emberstone theme in Konsole settings."
