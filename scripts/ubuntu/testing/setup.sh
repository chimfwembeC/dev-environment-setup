#!/bin/bash
set -e  # Exit on error

echo "🚀 Running all testing setup scripts..."

# Run each testing installation script
bash "$(dirname "$0")/install_jest.sh"
bash "$(dirname "$0")/install_pytest.sh"
bash "$(dirname "$0")/install_postman.sh"

echo "✅ All testing tools have been installed successfully!"
