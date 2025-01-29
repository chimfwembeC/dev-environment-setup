# Install Go using Chocolatey
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}
Write-Output "Installing Go..."
choco install golang -y

# Verify installation
Write-Output "Go installation complete. Version:"
go version
