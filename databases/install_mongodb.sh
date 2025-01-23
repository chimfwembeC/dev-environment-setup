#!/bin/bash

# Install MongoDB
echo "Installing MongoDB..."
sudo apt update
sudo apt install -y mongodb

# Start and enable MongoDB
sudo systemctl start mongodb
sudo systemctl enable mongodb

# Verify installation
mongod --version

echo "MongoDB installation complete!"

