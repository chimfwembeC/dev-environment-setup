Write-Host "🚀 Running all framework setup scripts..." -ForegroundColor Green

# Run each framework installation script
& "$PSScriptRoot\install_django.ps1"
& "$PSScriptRoot\install_flask.ps1"
& "$PSScriptRoot\install_express.ps1"
# & "$PSScriptRoot\install_nestjs.ps1"
& "$PSScriptRoot\install_laravel.ps1"
# & "$PSScriptRoot\install_rails.ps1"
# & "$PSScriptRoot\install_phoenix.ps1"
# & "$PSScriptRoot\install_spring_boot.ps1"

Write-Host "✅ All frameworks have been installed successfully!" -ForegroundColor Green
