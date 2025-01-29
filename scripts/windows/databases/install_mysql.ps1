# Install MySQL using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install MySQL
Write-Output "Installing MySQL..."
choco install mysql -y

# Instructions for MySQL setup
Write-Output "MySQL installation complete."
Write-Output "Run the MySQL service using 'net start mysql' or configure using the MySQL Workbench."
Write-Output "Default root user credentials may need to be set during the first configuration."
