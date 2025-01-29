# Install Docker Desktop using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install Docker Desktop
Write-Output "Installing Docker Desktop..."
choco install docker-desktop -y

# Verify installation
Write-Output "Docker Desktop installation complete. Restart your computer if necessary."
