#!/bin/bash
set -e  # Exit on error

echo "🚀 Running all programming language setup scripts..."

# Define script directory
SCRIPT_DIR="$(dirname "$0")"

# Run each language installation script
bash "$SCRIPT_DIR/install_go.sh"
bash "$SCRIPT_DIR/install_ruby.sh"
bash "$SCRIPT_DIR/install_php.sh"
bash "$SCRIPT_DIR/install_python.sh"
bash "$SCRIPT_DIR/install_java.sh"
bash "$SCRIPT_DIR/install_nodejs.sh"
bash "$SCRIPT_DIR/install_elixir.sh"
bash "$SCRIPT_DIR/install_phoenix_dependencies.sh"
bash "$SCRIPT_DIR/install_phoenix.sh"

echo "✅ All programming languages have been installed successfully!"
