# Install MongoDB using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install MongoDB
Write-Output "Installing MongoDB..."
choco install mongodb -y

# Setup MongoDB service
Write-Output "Starting MongoDB service..."
Start-Service mongodb

# Verify installation
Write-Output "MongoDB installation complete. Ensure the service is running using:"
Write-Output "Get-Service | Where-Object { $_.Name -like '*mongo*' }"
