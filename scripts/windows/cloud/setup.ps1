Write-Host "☁ Setting up cloud tools..." -ForegroundColor Green

# Run each cloud service installation script
& "$PSScriptRoot\install_awscli.ps1"
& "$PSScriptRoot\install_gcloud.ps1"
& "$PSScriptRoot\install_azcli.ps1"
& "$PSScriptRoot\install_terraform.ps1"

Write-Host "✅ Cloud tools setup complete!" -ForegroundColor Green
