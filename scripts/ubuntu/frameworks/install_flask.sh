#!/bin/bash

# Install Python and pip if not installed
echo "Installing Flask..."
pip3 install flask

# Verify installation
python3 -m flask --version

echo "Flask installation complete!"
