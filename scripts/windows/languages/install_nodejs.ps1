# Install Node.js using Chocolatey
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}
Write-Output "Installing Node.js..."
choco install nodejs -y

# Verify installation
Write-Output "Node.js installation complete. Version:"
node --version
Write-Output "npm installation complete. Version:"
npm --version
