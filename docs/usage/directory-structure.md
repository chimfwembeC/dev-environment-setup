# Directory Structure

## Overview

The project follows a structured organization to make it easy to find and maintain scripts for different platforms and tools.

```
dev-environment-setup/
├── scripts/
│   ├── ubuntu/
│   │   ├── languages/
│   │   ├── tools/
│   │   ├── databases/
│   │   └── setup.sh
│   ├── windows/
│   │   ├── languages/
│   │   ├── tools/
│   │   ├── databases/
│   │   └── setup.ps1
│   └── macos/
│       ├── languages/
│       ├── tools/
│       ├── databases/
│       └── setup.sh
├── config/
│   ├── vscode/
│   ├── git/
│   └── terminal/
└── docs/
    ├── guide/
    ├── installation/
    └── usage/
```

## Directory Descriptions

### Scripts Directory

- `scripts/`: Contains all installation scripts organized by platform
  - `ubuntu/`: Ubuntu-specific installation scripts
  - `windows/`: Windows-specific PowerShell scripts
  - `macos/`: macOS-specific installation scripts

### Configuration Directory

- `config/`: Contains default configurations for various tools
  - `vscode/`: VS Code settings and extensions
  - `git/`: Git configuration templates
  - `terminal/`: Terminal profiles and settings

### Documentation Directory

- `docs/`: Contains all project documentation
  - `guide/`: Getting started and feature documentation
  - `installation/`: Platform-specific installation guides
  - `usage/`: Usage guides and examples
