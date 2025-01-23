#!/bin/bash

# Install PHP and related extensions
echo "Installing PHP..."
sudo apt update
sudo apt install -y php php-cli php-mbstring php-xml php-curl php-zip

# Verify installation
php -v

echo "PHP installation complete!"
