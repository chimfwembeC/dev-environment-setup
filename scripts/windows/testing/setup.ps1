Write-Host "🚀 Running all testing setup scripts..." -ForegroundColor Green

# Run each testing installation script
& "$PSScriptRoot\install_jest.ps1"
& "$PSScriptRoot\install_pytest.ps1"
& "$PSScriptRoot\install_postman.ps1"

Write-Host "✅ All testing tools have been installed successfully!" -ForegroundColor Green
