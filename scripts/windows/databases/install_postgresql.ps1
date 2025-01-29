# Install PostgreSQL using Chocolatey

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey not found. Run install_choco.ps1 in the tools directory first."
    exit 1
}

# Install PostgreSQL
Write-Output "Installing PostgreSQL..."
choco install postgresql -y

# Instructions for setting up PostgreSQL
Write-Output "PostgreSQL installation complete."
Write-Output "To initialize the database, open the 'pgAdmin' tool or use the following:"
Write-Output "Run 'psql' command and set up a new database if required."
