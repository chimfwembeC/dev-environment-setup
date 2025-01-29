#!/bin/bash

# Install Azure CLI
echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Verify installation
az --version

echo "Azure CLI installation complete!"
