Write-Host "🚀 Running all programming language setup scripts..." -ForegroundColor Green

# Run each language installation script
& "$PSScriptRoot\install_go.ps1"
& "$PSScriptRoot\install_ruby.ps1"
& "$PSScriptRoot\install_php.ps1"
& "$PSScriptRoot\install_python.ps1"
& "$PSScriptRoot\install_java.ps1"
& "$PSScriptRoot\install_nodejs.ps1"
& "$PSScriptRoot\install_elixir_phoenix.ps1"

Write-Host "✅ All programming languages have been installed successfully!" -ForegroundColor Green
