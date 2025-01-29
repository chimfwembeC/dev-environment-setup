# Ubuntu Setup Guide

Here’s an updated version of your **Ubuntu Setup Guide** that reflects the use of a **main setup script** and provides a better flow for users:

---

# Ubuntu Setup Guide

## Prerequisites

* Ubuntu 20.04 or later
* Sudo privileges
* Internet connection

## Quick Start

1. **Clone the repository**:
   ```bash
   git clone https://github.com/chimfwembeC/dev-environment-setup.git
   cd dev-environment-setup
   ```
2. **Make the main setup script executable**:
   ```bash
   chmod +x scripts/ubuntu/main_setup.sh
   ```
3. **Run the main setup script** to install all components:
   ```bash
   ./scripts/ubuntu/main_setup.sh
   ```

---

## What Gets Installed

The main setup script will automatically run individual setup scripts for each component in the following categories:

### System Updates

* Updates package lists
* Upgrades existing packages
* Installs essential build tools

### Programming Languages

The following languages and associated tools will be installed:

1. **Python**

   * Python 3.x
   * pip
   * virtualenv
   * poetry

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/languages/python.sh
   ```
2. **Node.js**

   * Node.js via nvm
   * npm
   * yarn

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/languages/nodejs.sh
   ```
3. **Java**

   * OpenJDK
   * Maven
   * Gradle

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/languages/java.sh
   ```

### Development Tools

1. **Git**

   * Latest Git version
   * Git LFS
   * Git Flow

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/tools/git.sh
   ```
2. **Docker**

   * Docker Engine
   * Docker Compose
   * Docker credentials helper

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/tools/docker.sh
   ```
3. **VS Code**

   * Visual Studio Code editor
   * Essential extensions
   * User settings

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/tools/vscode.sh
   ```

### Databases

1. **PostgreSQL**

   * PostgreSQL server
   * psql client
   * Common extensions

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/databases/postgresql.sh
   ```
2. **MongoDB**

   * MongoDB Community Edition
   * Mongosh
   * Compass

   The script to install these is located in:

   ```bash
   ./scripts/ubuntu/databases/mongodb.sh
   ```

---

## Verification

After the setup is complete, you can verify that everything has been installed correctly by running the **verification script**:

```bash
./scripts/ubuntu/verify.sh
```

This script checks the installation status of all tools and components to ensure they are configured properly.

---

## Troubleshooting

If something goes wrong during the setup, you can:

* Check the **log files** for more detailed error messages:
  ```bash
  cat ~/.dev-setup/logs/verify.log
  ```
* Run individual scripts for a specific tool or language setup. For example:
  ```bash
  ./scripts/ubuntu/tools/docker.sh
  ./scripts/ubuntu/languages/python.sh
  ```
* Use the `--verbose` flag in scripts for detailed output to help diagnose issues:
  ```bash
  ./scripts/ubuntu/tools/docker.sh --verbose
  ```

---

## Additional Notes

* **Customization**: Feel free to modify the individual setup scripts (located in `scripts/ubuntu/`) to suit your needs.
* **Script Structure**: The main setup script (`main_setup.sh`) orchestrates all the sub-setup scripts for **languages**, **tools**, **databases**, and other components, making it easy to install everything with a single command.

---

This guide should help you get your development environment up and running quickly and with minimal issues. Let me know if you need further clarification or help!

## Prerequisites

- Ubuntu 20.04 or later
- Sudo privileges
- Internet connection

## Quick Start

```bash
# Clone the repository
git clone https://github.com/chimfwembeC/dev-environment-setup.git
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
