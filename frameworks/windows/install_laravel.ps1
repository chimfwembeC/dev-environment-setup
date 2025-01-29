# Install Laravel globally using Composer

# Check if PHP is installed
if (!(Get-Command php -ErrorAction SilentlyContinue)) {
    Write-Output "PHP not found. Run install_php.ps1 in the languages directory first."
    exit 1
}

# Install Composer if not already installed
if (!(Get-Command composer -ErrorAction SilentlyContinue)) {
    Write-Output "Installing Composer..."
    Invoke-WebRequest -Uri https://getcomposer.org/installer -OutFile composer-setup.php
    php composer-setup.php --install-dir=C:\Tools --filename=composer
    Remove-Item composer-setup.php
    Write-Output "Composer installed. Ensure C:\Tools is added to your PATH."
}

# Install Laravel globally
Write-Output "Installing Laravel..."
composer global require laravel/installer
Write-Output "Laravel installation complete. Ensure Composer's global bin directory is in your PATH."
