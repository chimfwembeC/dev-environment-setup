#!/bin/bash

# Install MongoDB Compass (GUI)
echo "Installing MongoDB Compass..."
wget https://downloads.mongodb.com/compass/mongodb-compass_1.27.0_amd64.deb
sudo dpkg -i mongodb-compass_1.27.0_amd64.deb
sudo apt --fix-broken install

# Verify installation
mongodb-compass --version

echo "MongoDB Compass installation complete!"
