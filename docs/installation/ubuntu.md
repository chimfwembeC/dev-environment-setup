# Ubuntu Setup Guide

## Prerequisites
- Ubuntu 20.04 or later
- Sudo privileges
- Internet connection

## Quick Start
```bash
# Clone the repository
git clone https://github.com/yourusername/dev-environment-setup.git
cd dev-environment-setup

# Make the script executable
chmod +x scripts/ubuntu/setup.sh

# Run the setup script
./scripts/ubuntu/setup.sh
```

## What Gets Installed

### System Updates
- Updates package lists
- Upgrades existing packages
- Installs essential build tools

### Programming Languages
1. **Python**
   ```bash
   ./scripts/ubuntu/languages/python.sh
   ```
   - Python 3.x
   - pip
   - virtualenv
   - poetry

2. **Node.js**
   ```bash
   ./scripts/ubuntu/languages/nodejs.sh
   ```
   - Node.js via nvm
   - npm
   - yarn

3. **Java**
   ```bash
   ./scripts/ubuntu/languages/java.sh
   ```
   - OpenJDK
   - Maven
   - Gradle

### Development Tools
1. **Git**
   ```bash
   ./scripts/ubuntu/tools/git.sh
   ```
   - Latest Git version
   - Git LFS
   - Git Flow

2. **Docker**
   ```bash
   ./scripts/ubuntu/tools/docker.sh
   ```
   - Docker Engine
   - Docker Compose
   - Docker credentials helper

3. **VS Code**
   ```bash
   ./scripts/ubuntu/tools/vscode.sh
   ```
   - VS Code
   - Essential extensions
   - User settings

### Databases
1. **PostgreSQL**
   ```bash
   ./scripts/ubuntu/databases/postgresql.sh
   ```
   - PostgreSQL server
   - psql client
   - Common extensions

2. **MongoDB**
   ```bash
   ./scripts/ubuntu/databases/mongodb.sh
   ```
   - MongoDB Community Edition
   - Mongosh
   - Compass

## Verification
Run the verification script to ensure everything is installed correctly:
```bash
./scripts/ubuntu/verify.sh
```

## Troubleshooting
- Check logs in `~/.dev-setup/logs`
- Run individual scripts for specific tools
- Use `--verbose` flag for detailed output