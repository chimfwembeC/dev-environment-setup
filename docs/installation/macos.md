# macOS Setup Guide

## Prerequisites

- macOS Monterey (12.0) or later
- Command Line Tools for Xcode
- Internet connection

## Quick Start

```bash
# Clone the repository
git clone https://github.com/chimfwembeC/dev-environment-setup.git
cd dev-environment-setup

# Make the script executable
chmod +x scripts/macos/setup.sh

# Run the setup script
./scripts/macos/setup.sh
```

## What Gets Installed

### Package Manager

- Installs Homebrew
- Updates package lists
- Installs essential tools

### Programming Languages

1. **Python**

   ```bash
   ./scripts/macos/languages/python.sh
   ```

   - Python 3.x
   - pip
   - virtualenv
   - poetry
2. **Node.js**

   ```bash
   ./scripts/macos/languages/nodejs.sh
   ```

   - Node.js via nvm
   - npm
   - yarn
3. **Java**

   ```bash
   ./scripts/macos/languages/java.sh
   ```

   - OpenJDK
   - Maven
   - Gradle

### Development Tools

1. **Git**

   ```bash
   ./scripts/macos/tools/git.sh
   ```

   - Latest Git version
   - Git LFS
   - Git Flow
2. **Docker**

   ```bash
   ./scripts/macos/tools/docker.sh
   ```

   - Docker Desktop
   - Docker Compose
   - Docker credentials helper
3. **VS Code**

   ```bash
   ./scripts/macos/tools/vscode.sh
   ```

   - VS Code
   - Essential extensions
   - User settings

### Databases

1. **PostgreSQL**

   ```bash
   ./scripts/macos/databases/postgresql.sh
   ```

   - PostgreSQL server
   - psql client
   - Common extensions
2. **MongoDB**

   ```bash
   ./scripts/macos/databases/mongodb.sh
   ```

   - MongoDB Community Edition
   - Mongosh
   - Compass

## Verification

Run the verification script:

```bash
./scripts/macos/verify.sh
```

## Troubleshooting

- Check logs in `~/.dev-setup/logs`
- Run individual scripts for specific tools
- Use `--verbose` flag for detailed output
