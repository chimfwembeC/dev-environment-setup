#!/bin/bash

# Install MySQL
echo "Installing MySQL..."
sudo apt update
sudo apt install -y mysql-server

# Start MySQL service
sudo systemctl start mysql
sudo systemctl enable mysql

# Secure MySQL installation
sudo mysql_secure_installation

# Verify installation
mysql --version

echo "MySQL installation complete!"
