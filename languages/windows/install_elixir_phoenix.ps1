# Ensure PowerShell is running as administrator to avoid permission issues

# 1. Install Chocolatey (if it's not installed)
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey is already installed."
}

# 2. Install Erlang via Chocolatey
Write-Host "Installing Erlang..."
choco install erlang -y

# 3. Install Elixir via Chocolatey
Write-Host "Installing Elixir..."
choco install elixir -y

# 4. Install Node.js (for Phoenix asset management)
Write-Host "Installing Node.js..."
choco install nodejs-lts -y

# 5. Install Git (required for dependency management with Phoenix)
Write-Host "Installing Git..."
choco install git -y

# 6. Install Hex (Elixir package manager)
Write-Host "Installing Hex..."
mix local.hex

# 7. Install Phoenix (Phoenix web framework)
Write-Host "Installing Phoenix..."
mix archive.install hex phx_new 1.6.0

# 8. Verify the installation of Elixir, Erlang, and Phoenix
Write-Host "Verifying installations..."

# Verify Erlang installation
$erlangVersion = erl -eval "erlang:display(erlang:system_info(otp_release)), halt()." -sname erl -setcookie abc -noinput
Write-Host "Erlang version: $erlangVersion"

# Verify Elixir installation
$elixirVersion = elixir -v
Write-Host "Elixir version: $elixirVersion"

# Verify Phoenix installation
$phoenixVersion = mix phx.new --version
Write-Host "Phoenix version: $phoenixVersion"

# Success message
Write-Host "Elixir, Phoenix, and all dependencies have been installed successfully!"
