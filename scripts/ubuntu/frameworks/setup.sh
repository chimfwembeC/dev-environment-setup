#!/bin/bash
set -e  # Exit on error

echo "🚀 Running all framework setup scripts..."

# Define script directory
SCRIPT_DIR="$(dirname "$0")"

# Run each framework installation script
bash "$SCRIPT_DIR/install_django.sh"
bash "$SCRIPT_DIR/install_flask.sh"
bash "$SCRIPT_DIR/install_express.sh"
# bash "$SCRIPT_DIR/install_nestjs.sh"
bash "$SCRIPT_DIR/install_laravel.sh"
# bash "$SCRIPT_DIR/install_rails.sh"
# bash "$SCRIPT_DIR/install_phoenix.sh"
# bash "$SCRIPT_DIR/install_spring_boot.sh"

echo "✅ All frameworks have been installed successfully!"
