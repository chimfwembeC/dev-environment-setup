# Install Visual Studio Code using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install Visual Studio Code
Write-Output "Installing Visual Studio Code..."
choco install vscode -y

# Verify installation
Write-Output "Visual Studio Code installation complete. You can launch it using 'code' command."
