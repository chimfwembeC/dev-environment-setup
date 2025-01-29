# Install Python using Chocolatey
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}
Write-Output "Installing Python..."
choco install python -y

# Verify installation
Write-Output "Python installation complete. Version:"
python --version
