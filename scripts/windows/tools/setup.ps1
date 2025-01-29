Write-Host "🛠 Running all tool setup scripts..." -ForegroundColor Green

# Run each tool installation script
& "$PSScriptRoot\install_docker.ps1"
& "$PSScriptRoot\install_git.ps1"
& "$PSScriptRoot\install_vscode.ps1"
& "$PSScriptRoot\install_asdf.ps1"
# & "$PSScriptRoot\install_postman.ps1"
# & "$PSScriptRoot\install_terraform.ps1"
# & "$PSScriptRoot\install_kubectl.ps1"
# & "$PSScriptRoot\install_ansible.ps1"

Write-Host "✅ All tools have been installed successfully!" -ForegroundColor Green
