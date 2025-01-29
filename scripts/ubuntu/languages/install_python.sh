#!/bin/bash

# Install Python 3 and pip
echo "Installing Python 3 and pip..."
sudo apt update
sudo apt install -y python3 python3-pip

# Verify installation
python3 --version
pip3 --version

echo "Python installation complete!"
