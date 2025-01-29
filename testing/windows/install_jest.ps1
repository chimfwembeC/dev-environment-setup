# Install Jest globally using npm

# Check if Node.js is installed
if (!(Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Output "Node.js not found. Run install_nodejs.ps1 in the languages directory first."
    exit 1
}

# Install Jest globally
Write-Output "Installing Jest..."
npm install -g jest

# Verify installation
Write-Output "Jest installation complete. Version:"
jest --version
