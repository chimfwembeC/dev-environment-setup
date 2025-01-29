#!/bin/bash

# Install Ruby
echo "Installing Ruby..."
sudo apt update
sudo apt install -y ruby-full

# Verify installation
ruby --version

echo "Ruby installation complete!"
