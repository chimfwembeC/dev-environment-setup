# Windows Setup Guide

## Prerequisites
- Windows 10 or later
- PowerShell 5.1 or later
- Administrator privileges
- Internet connection

## Quick Start
```powershell
# Clone the repository
git clone https://github.com/yourusername/dev-environment-setup.git
cd dev-environment-setup

# Set execution policy (if not already set)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Run the setup script
.\scripts\windows\setup.ps1
```

## What Gets Installed

### Package Manager
- Installs Chocolatey
- Configures package sources
- Updates system PATH

### Programming Languages
1. **Python**
   ```powershell
   .\scripts\windows\languages\python.ps1
   ```
   - Python 3.x
   - pip
   - virtualenv
   - poetry

2. **Node.js**
   ```powershell
   .\scripts\windows\languages\nodejs.ps1
   ```
   - Node.js via nvm-windows
   - npm
   - yarn

3. **Java**
   ```powershell
   .\scripts\windows\languages\java.ps1
   ```
   - OpenJDK
   - Maven
   - Gradle

### Development Tools
1. **Git**
   ```powershell
   .\scripts\windows\tools\git.ps1
   ```
   - Git for Windows
   - Git LFS
   - Git Credential Manager

2. **Docker**
   ```powershell
   .\scripts\windows\tools\docker.ps1
   ```
   - Docker Desktop
   - WSL 2 backend
   - Docker Compose

3. **VS Code**
   ```powershell
   .\scripts\windows\tools\vscode.ps1
   ```
   - VS Code
   - Essential extensions
   - User settings

### Databases
1. **PostgreSQL**
   ```powershell
   .\scripts\windows\databases\postgresql.ps1
   ```
   - PostgreSQL server
   - pgAdmin
   - Common extensions

2. **MongoDB**
   ```powershell
   .\scripts\windows\databases\mongodb.ps1
   ```
   - MongoDB Community Edition
   - Mongosh
   - Compass

## Verification
Run the verification script:
```powershell
.\scripts\windows\verify.ps1
```

## Troubleshooting
- Check logs in `%USERPROFILE%\.dev-setup\logs`
- Run scripts individually for specific tools
- Use `-Verbose` flag for detailed output