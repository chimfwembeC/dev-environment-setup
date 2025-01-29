# Running Scripts

## General Usage

### Basic Installation

```bash
# Clone the repository
git clone https://github.com/chimfwembeC/dev-environment-setup.git
cd dev-environment-setup

# Run the platform-specific setup script
./scripts/[platform]/setup.sh  # For Unix-based systems
.\scripts\windows\setup.ps1    # For Windows
```

## Platform-Specific Instructions

### Ubuntu/Linux

```bash
# Make script executable
chmod +x scripts/ubuntu/setup.sh

# Run full setup
./scripts/ubuntu/setup.sh

# Run specific tool installation
./scripts/ubuntu/tools/docker.sh
```

### Windows

```powershell
# Enable script execution
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Run full setup
.\scripts\windows\setup.ps1

# Run specific tool installation
.\scripts\windows\tools\docker.ps1
```

### macOS

```bash
# Make script executable
chmod +x scripts/macos/setup.sh

# Run full setup
./scripts/macos/setup.sh

# Run specific tool installation
./scripts/macos/tools/docker.sh
```

## Script Options

### Common Flags

- `--help`: Display help information
- `--verbose`: Show detailed output
- `--no-confirm`: Skip confirmation prompts
- `--skip-verify`: Skip verification steps

### Examples

```bash
# Run with verbose output
./scripts/ubuntu/setup.sh --verbose

# Skip confirmation prompts
./scripts/macos/setup.sh --no-confirm

# Install specific version of Node.js
./scripts/ubuntu/languages/nodejs.sh --version 18.16.0
```

## Running Individual Components

### Programming Languages

```bash
# Install Python
./scripts/[platform]/languages/python.sh

# Install Node.js
./scripts/[platform]/languages/nodejs.sh

# Install Java
./scripts/[platform]/languages/java.sh
```

### Development Tools

```bash
# Install Git
./scripts/[platform]/tools/git.sh

# Install Docker
./scripts/[platform]/tools/docker.sh

# Install VS Code
./scripts/[platform]/tools/vscode.sh
```

### Databases

```bash
# Install PostgreSQL
./scripts/[platform]/databases/postgresql.sh

# Install MongoDB
./scripts/[platform]/databases/mongodb.sh
```
