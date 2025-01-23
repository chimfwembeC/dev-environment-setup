#!/bin/bash

# Install Composer (required by Laravel)
echo "Installing Composer..."
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Install Laravel
echo "Installing Laravel..."
composer global require laravel/installer

# Verify installation
laravel --version

echo "Laravel installation complete!"
