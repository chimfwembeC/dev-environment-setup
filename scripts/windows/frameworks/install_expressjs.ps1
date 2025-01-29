# Install Express.js globally using npm

# Check if Node.js is installed
if (!(Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Output "Node.js not found. Run install_nodejs.ps1 in the languages directory first."
    exit 1
}

# Install Express.js
Write-Output "Installing Express.js..."
npm install -g express-generator

# Verify installation
Write-Output "Express.js installation complete."
