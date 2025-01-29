# Install Postman using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install Postman
Write-Output "Installing Postman..."
choco install postman -y

# Verify installation
Write-Output "Postman installation complete."
Write-Output "Launch Postman from your start menu or by typing 'postman' in the command line."
