# Install PHP using Chocolatey
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}
Write-Output "Installing PHP..."
choco install php -y

# Verify installation
Write-Output "PHP installation complete. Version:"
php --version
