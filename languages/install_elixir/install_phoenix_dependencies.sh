#!/bin/bash

# Install PostgreSQL (Phoenix default database)
echo "Installing PostgreSQL..."
sudo apt update
sudo apt install -y postgresql postgresql-contrib

# Start PostgreSQL and enable it to start on boot
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Set up PostgreSQL user and database for Phoenix
sudo -u postgres createuser --pwprompt phoenix
sudo -u postgres createdb -O phoenix phoenix_dev

# Verify PostgreSQL installation
psql --version

# Install Node.js (Phoenix requires Node.js for asset compilation)
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs

# Install npm (for managing JavaScript packages)
sudo apt install -y npm

# Verify Node.js and npm installation
node --version
npm --version

echo "PostgreSQL, Node.js, and npm setup complete!"
