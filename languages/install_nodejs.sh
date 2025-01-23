#!/bin/bash

# Install Node.js
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs

# Verify installation
node --version
npm --version

echo "Node.js installation complete!"
