#!/bin/bash
set -e  # Exit on error

echo "🔧 Starting full environment setup for Ubuntu/macOS..."

# Setup languages
echo "💻 Setting up programming languages..."
bash ./languages/setup.sh

# Setup tools
echo "🛠 Setting up development tools..."
bash ./tools/setup.sh

# Setup databases
echo "🗄 Setting up databases..."
bash ./databases/setup.sh

# Setup testing tools
echo "🧪 Setting up testing tools..."
bash ./testing/setup.sh

# Setup frameworks
echo "🖼 Setting up frameworks..."
bash ./frameworks/setup.sh

echo "✅ Full environment setup complete!"
