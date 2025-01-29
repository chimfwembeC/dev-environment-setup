#!/bin/bash

# Install Git
echo "Installing Git..."
sudo apt update
sudo apt install -y git

# Verify installation
git --version

echo "Git installation complete!"
