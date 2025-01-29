# Install AWS CLI using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install AWS CLI
Write-Output "Installing AWS CLI..."
choco install awscli -y

# Verify installation
Write-Output "AWS CLI installation complete. Version:"
aws --version

# Instructions for setup
Write-Output "Run 'aws configure' to set up your AWS credentials."
Write-Output "You will need your AWS Access Key ID, Secret Access Key, and the default region."
