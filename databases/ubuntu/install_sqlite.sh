#!/bin/bash

# Install SQLite
echo "Installing SQLite..."
sudo apt update
sudo apt install -y sqlite3

# Verify installation
sqlite3 --version

echo "SQLite installation complete!"
