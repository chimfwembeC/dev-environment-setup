#!/bin/bash

# Install Python and pip if not installed
echo "Installing Django..."
pip3 install django

# Verify installation
django-admin --version

echo "Django installation complete!"
