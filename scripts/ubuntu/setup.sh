#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting setup for $(uname -s)..."

# Ensure the script is run as root (for Ubuntu/macOS installations)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Try running: sudo bash setup.sh"
   exit 1
fi

# Update system packages
echo "Updating system packages..."
if [[ "$(uname -s)" == "Darwin" ]]; then
    brew update && brew upgrade  # macOS (using Homebrew)
else
    apt update && apt upgrade -y  # Ubuntu (using APT)
fi

# Install common tools
echo "Installing development tools..."
if [[ "$(uname -s)" == "Darwin" ]]; then
    brew install git node python3 docker docker-compose
else
    apt install -y git curl wget build-essential nodejs python3 python3-pip docker.io docker-compose
fi

# Install programming languages
echo "Installing programming languages..."
bash ./languages/setup.sh

# Install development tools
echo "Setting up development tools..."
bash ./tools/setup.sh

# Install databases
echo "Setting up databases..."
bash ./databases/setup.sh

# Final message
echo "Development environment setup is complete!"
