#!/bin/bash

# Install Jest
echo "Installing Jest..."
npm install --save-dev jest

# Verify installation
npx jest --version

echo "Jest installation complete!"
