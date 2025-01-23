#!/bin/bash

# Install Express.js
echo "Installing Express.js..."
npm install express --save

# Verify installation
node -e "console.log(require('express').version)"

echo "Express.js installation complete!"
