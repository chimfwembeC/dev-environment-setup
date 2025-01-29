# Script Modifications

## Overview

This guide explains how to modify existing scripts to customize the installation process according to your needs. Whether you're changing versions, adding features, or modifying configurations, following these guidelines ensures maintainable and reliable scripts.

## Common Modifications

### Changing Versions
```bash
# Original version
NODEJS_VERSION="18.16.0"

# Modified version
NODEJS_VERSION="20.0.0"
```

### Adding Configuration Options
```bash
# Add new configuration option
INSTALL_ADDITIONAL_TOOLS=true
CUSTOM_INSTALL_PATH="/opt/custom"

# Use in script
if [ "$INSTALL_ADDITIONAL_TOOLS" = true ]; then
    install_additional_tools
fi
```

### Modifying Installation Sources
```bash
# Change package repository
CUSTOM_REPO="https://custom-repo.example.com"
APT_REPO="deb $CUSTOM_REPO/ubuntu focal main"

# Change download URL
DOWNLOAD_URL="https://custom-mirror.example.com/downloads"
```

## Script Structure

### Base Script Template
```bash
#!/bin/bash

# Configuration
TOOL_NAME="example"
TOOL_VERSION="1.0.0"
INSTALL_PATH="/usr/local"

# Source common functions
source "$(dirname "$0")/../common/functions.sh"

# Functions
install_tool() {
    # Installation logic
}

configure_tool() {
    # Configuration logic
}

verify_installation() {
    # Verification logic
}

# Main execution
main() {
    install_tool
    configure_tool
    verify_installation
}

main "$@"
```

## Modification Guidelines

### 1. Configuration Changes
- Modify variables at the top of the script
- Use environment variables for dynamic configuration
- Document configuration options

### 2. Installation Process
- Add new installation steps
- Modify existing steps
- Add cleanup procedures

### 3. Error Handling
- Add custom error messages
- Implement recovery procedures
- Add validation checks

### 4. Logging
- Add custom log messages
- Modify log levels
- Change log format

## Examples

### 1. Modifying Python Installation
```bash
# Original script
install_python() {
    apt-get install -y python3
}

# Modified script with version control
install_python() {
    if [ "$PYTHON_VERSION" = "latest" ]; then
        apt-get install -y python3
    else
        apt-get install -y python3=$PYTHON_VERSION
    fi
    
    # Add custom packages
    if [ "$INSTALL_DATA_SCIENCE_PACKAGES" = true ]; then
        pip3 install numpy pandas scipy
    fi
}
```

### 2. Customizing VS Code Extensions
```bash
# Original script
install_extensions() {
    code --install-extension ms-python.python
}

# Modified script with custom extensions
install_extensions() {
    # Read extensions from config file
    while IFS= read -r extension; do
        code --install-extension "$extension"
    done < "$CUSTOM_EXTENSIONS_FILE"
}
```

### 3. Adding Custom Verification
```bash
# Original verification
verify_installation() {
    command -v tool >/dev/null
}

# Enhanced verification
verify_installation() {
    # Check command availability
    if ! command -v tool >/dev/null; then
        log_error "Tool not found in PATH"
        return 1
    fi
    
    # Check version
    version=$(tool --version)
    if [ "$version" != "$REQUIRED_VERSION" ]; then
        log_error "Version mismatch"
        return 1
    fi
    
    # Test functionality
    if ! test_tool_function; then
        log_error "Functionality test failed"
        return 1
    fi
    
    log_success "Verification passed"
    return 0
}
```

## Best Practices

1. **Backup Original Scripts**
   - Keep copies of original scripts
   - Document changes
   - Use version control

2. **Testing**
   - Test modifications in isolation
   - Verify on clean systems
   - Check for side effects

3. **Documentation**
   - Update README files
   - Document new features
   - Update usage examples

4. **Maintainability**
   - Keep modifications organized
   - Use consistent coding style
   - Add comments for complex changes