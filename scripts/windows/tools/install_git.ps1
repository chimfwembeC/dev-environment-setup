# Install Git using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install Git
Write-Output "Installing Git..."
choco install git -y

# Verify installation
Write-Output "Git installation complete. Version:"
git --version
