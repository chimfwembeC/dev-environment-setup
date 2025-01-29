# Install Ruby using Chocolatey
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}
Write-Output "Installing Ruby..."
choco install ruby -y

# Verify installation
Write-Output "Ruby installation complete. Version:"
ruby --version
