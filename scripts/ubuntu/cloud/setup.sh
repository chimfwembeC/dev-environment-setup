#!/bin/bash
set -e  # Exit on error

echo "☁ Setting up cloud tools..."

SCRIPT_DIR="$(dirname "$0")"

# Run each cloud service installation script
bash "$SCRIPT_DIR/install_awscli.sh"
bash "$SCRIPT_DIR/install_gcloud.sh"
bash "$SCRIPT_DIR/install_azcli.sh"
bash "$SCRIPT_DIR/install_terraform.sh"

echo "✅ Cloud tools setup complete!"
