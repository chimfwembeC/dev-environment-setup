# Adding Tools

## Overview

This guide explains how to add new tools to the automated setup scripts. The modular structure makes it easy to extend the functionality while maintaining consistency across platforms.

## Basic Structure

### Tool Script Template
```bash
#!/bin/bash

# Tool installation script template
TOOL_NAME="example-tool"
TOOL_VERSION="1.0.0"

# Source common functions
source "$(dirname "$0")/../common/functions.sh"

# Pre-installation checks
check_prerequisites() {
    log_info "Checking prerequisites for $TOOL_NAME"
    # Add prerequisite checks here
}

# Installation function
install_tool() {
    log_info "Installing $TOOL_NAME version $TOOL_VERSION"
    # Add installation steps here
}

# Configuration function
configure_tool() {
    log_info "Configuring $TOOL_NAME"
    # Add configuration steps here
}

# Verification function
verify_installation() {
    log_info "Verifying $TOOL_NAME installation"
    # Add verification steps here
}

# Main execution
main() {
    check_prerequisites
    install_tool
    configure_tool
    verify_installation
}

main "$@"
```

## Adding a New Tool

1. Create the script file
```bash
# For Ubuntu
touch scripts/ubuntu/tools/new-tool.sh
chmod +x scripts/ubuntu/tools/new-tool.sh

# For Windows
touch scripts/windows/tools/new-tool.ps1

# For macOS
touch scripts/macos/tools/new-tool.sh
chmod +x scripts/macos/tools/new-tool.sh
```

2. Implement the installation logic
3. Add verification steps
4. Update documentation
5. Test on all platforms

## Example: Adding a New Language

### 1. Create Script Files
```bash
# Create script files for each platform
touch scripts/ubuntu/languages/kotlin.sh
touch scripts/windows/languages/kotlin.ps1
touch scripts/macos/languages/kotlin.sh
```

### 2. Implement Installation (Ubuntu Example)
```bash
#!/bin/bash

KOTLIN_VERSION="1.8.0"

source "$(dirname "$0")/../common/functions.sh"

install_kotlin() {
    log_info "Installing Kotlin $KOTLIN_VERSION"
    # Installation steps here
}

configure_kotlin() {
    log_info "Configuring Kotlin environment"
    # Configuration steps here
}

main() {
    install_kotlin
    configure_kotlin
}

main "$@"
```

### 3. Add Verification
```bash
verify_kotlin() {
    if command -v kotlin >/dev/null; then
        log_success "Kotlin installed successfully"
        kotlin -version
    else
        log_error "Kotlin installation failed"
        return 1
    fi
}
```

## Best Practices

1. **Modularity**
   - Keep scripts focused on single responsibility
   - Use common functions for shared operations
   - Maintain consistent structure across platforms

2. **Error Handling**
   - Check prerequisites
   - Validate inputs
   - Provide meaningful error messages
   - Include rollback capabilities

3. **Documentation**
   - Update feature list
   - Add usage examples
   - Document configuration options
   - Include troubleshooting steps

4. **Testing**
   - Test on clean systems
   - Verify idempotency
   - Check platform compatibility
   - Validate error scenarios