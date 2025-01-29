# Install Azure CLI using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install Azure CLI
Write-Output "Installing Azure CLI..."
choco install azure-cli -y

# Verify installation
Write-Output "Azure CLI installation complete. Version:"
az --version

# Instructions for setup
Write-Output "Run 'az login' to authenticate with your Azure account."
Write-Output "Follow the instructions to sign in to your Azure account."
