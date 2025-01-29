# Install Flask using pip

# Check if Python is installed
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Output "Python not found. Run install_python.ps1 in the languages directory first."
    exit 1
}

# Install Flask
Write-Output "Installing Flask..."
pip install flask

# Verify installation
Write-Output "Flask installation complete."
