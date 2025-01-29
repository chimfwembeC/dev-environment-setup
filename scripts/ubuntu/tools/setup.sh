#!/bin/bash
set -e  # Exit on error

echo "🛠 Running all tool setup scripts..."

# Define script directory
SCRIPT_DIR="$(dirname "$0")"

# Run each tool installation script
bash "$SCRIPT_DIR/install_docker.sh"
bash "$SCRIPT_DIR/install_git.sh"
bash "$SCRIPT_DIR/install_vscode.sh"
bash "$SCRIPT_DIR/install_asdf.sh"
# bash "$SCRIPT_DIR/install_postman.sh"
bash "$SCRIPT_DIR/install_yarn.sh"
bash "$SCRIPT_DIR/install_docker_compose.sh"
# bash "$SCRIPT_DIR/install_ansible.sh"

echo "✅ All tools have been installed successfully!"
