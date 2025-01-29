# Verification

## Overview

After installation, it's important to verify that all components are installed correctly and functioning as expected. Our verification system provides comprehensive checks for all installed tools and configurations.

## Running Verification

### Full System Verification
```bash
# Ubuntu/macOS
./scripts/[platform]/verify.sh

# Windows
.\scripts\windows\verify.ps1
```

### Component-Specific Verification
```bash
# Verify specific tool
./scripts/[platform]/verify.sh --component docker

# Verify all programming languages
./scripts/[platform]/verify.sh --category languages
```

## What Gets Verified

### System Components
- System package manager
- Essential build tools
- Environment variables
- PATH configuration

### Programming Languages
- Version information
- Package managers
- Development tools
- Environment setup

### Development Tools
- Installation status
- Configuration
- Plugin/extension setup
- Access permissions

### Databases
- Server status
- Connection test
- User permissions
- Basic operations

## Verification Output

### Success Example
```
✓ System Requirements
  ✓ Package manager
  ✓ Build tools
  ✓ Environment variables

✓ Programming Languages
  ✓ Python 3.10.0
  ✓ Node.js 18.16.0
  ✓ Java OpenJDK 17.0.2

✓ Development Tools
  ✓ Git 2.34.1
  ✓ Docker 20.10.21
  ✓ VS Code 1.74.0

✓ Databases
  ✓ PostgreSQL 14.5
  ✓ MongoDB 6.0.3
```

### Failure Example
```
✓ System Requirements
  ✓ Package manager
  ✗ Build tools (missing: make)
  ✓ Environment variables

✓ Programming Languages
  ✓ Python 3.10.0
  ✗ Node.js (not found)
  ✓ Java OpenJDK 17.0.2
```

## Troubleshooting Failed Verifications

1. Check the logs
```bash
cat ~/.dev-setup/logs/verify.log
```

2. Run specific verification
```bash
./scripts/[platform]/verify.sh --component [failed-component]
```

3. Attempt repair
```bash
./scripts/[platform]/repair.sh --component [failed-component]
```