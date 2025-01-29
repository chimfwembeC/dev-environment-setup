#!/bin/bash

# Install Visual Studio Code (VSCode)
echo "Installing Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install -y code

# Verify installation
code --version

echo "Visual Studio Code installation complete!"
