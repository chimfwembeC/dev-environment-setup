# PowerShell script to set up development environment on Windows
Write-Host "Starting Windows development environment setup..."

# Ensure script is run as Administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Please run this script as Administrator!" -ForegroundColor Red
    exit
}

# Install Chocolatey if not installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Update Chocolatey
choco upgrade chocolatey -y

# Install common tools
Write-Host "Installing development tools..."
choco install git nodejs python docker-desktop vscode -y

# Install programming languages
Write-Host "Installing programming languages..."
& "$PSScriptRoot\languages\setup.ps1"

# Install development tools
Write-Host "Setting up development tools..."
& "$PSScriptRoot\tools\setup.ps1"

# Install databases
Write-Host "Setting up databases..."
& "$PSScriptRoot\databases\setup.ps1"

Write-Host "Development environment setup is complete!" -ForegroundColor Green
