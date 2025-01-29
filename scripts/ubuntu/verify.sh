#!/bin/bash

set -e

# Log file location
LOG_FILE="$HOME/.dev-setup/logs/verify.log"
mkdir -p "$(dirname "$LOG_FILE")"

# Helper function to log success/failure
log_check() {
  if $1; then
    echo "✓ $2" >> "$LOG_FILE"
  else
    echo "✗ $2" >> "$LOG_FILE"
  fi
}

echo "Starting system verification..." > "$LOG_FILE"

# 1. Check if essential tools are installed
log_check "command -v git" "Git"
log_check "command -v docker" "Docker"
log_check "command -v node" "Node.js"
log_check "command -v python3" "Python"
log_check "command -v java" "Java"
log_check "command -v go" "Go"

# 2. Check if databases are running (e.g., PostgreSQL, MongoDB)
log_check "pg_isready" "PostgreSQL"
log_check "mongo --eval 'db.runCommand({ connectionStatus: 1 })'" "MongoDB"

# 3. Check for installed package versions (for important tools)
log_check "node -v" "Node.js version"
log_check "python3 --version" "Python version"
log_check "java -version" "Java version"
log_check "go version" "Go version"

echo "System verification complete!" >> "$LOG_FILE"

# Display the log contents for immediate feedback
cat "$LOG_FILE"
