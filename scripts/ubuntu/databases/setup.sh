#!/bin/bash
set -e  # Exit on error

echo "🗄 Setting up databases..."

SCRIPT_DIR="$(dirname "$0")"

# Run each database installation script
bash "$SCRIPT_DIR/install_postgresql.sh"
bash "$SCRIPT_DIR/install_mysql.sh"
bash "$SCRIPT_DIR/install_mongodb.sh"
# bash "$SCRIPT_DIR/install_redis.sh"

echo "✅ Database setup complete!"
