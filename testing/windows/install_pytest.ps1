# Install Pytest using pip

# Check if Python is installed
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Output "Python not found. Run install_python.ps1 in the languages directory first."
    exit 1
}

# Install Pytest
Write-Output "Installing Pytest..."
pip install pytest

# Verify installation
Write-Output "Pytest installation complete. Version:"
pytest --version
