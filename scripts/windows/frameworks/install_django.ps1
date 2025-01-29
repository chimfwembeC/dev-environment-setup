# Install Django using pip

# Check if Python is installed
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Output "Python not found. Run install_python.ps1 in the languages directory first."
    exit 1
}

# Install Django
Write-Output "Installing Django..."
pip install django

# Verify installation
Write-Output "Django installation complete. Version:"
django-admin --version
