# Install Google Cloud SDK using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install Google Cloud SDK
Write-Output "Installing Google Cloud SDK..."
choco install google-cloud-sdk -y

# Verify installation
Write-Output "Google Cloud SDK installation complete. Version:"
gcloud --version

# Instructions for setup
Write-Output "Run 'gcloud init' to initialize the SDK and authenticate your Google Cloud account."
Write-Output "Follow the instructions to authenticate and set your default project."
