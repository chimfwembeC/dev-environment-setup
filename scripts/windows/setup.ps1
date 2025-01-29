Write-Host "🔧 Starting full environment setup for Windows..." -ForegroundColor Green

# Setup languages
Write-Host "💻 Setting up programming languages..."
& "$PSScriptRoot\languages\setup.ps1"

# Setup tools
Write-Host "🛠 Setting up development tools..."
& "$PSScriptRoot\tools\setup.ps1"

# Setup databases
Write-Host "🗄 Setting up databases..."
& "$PSScriptRoot\databases\setup.ps1"

# Setup testing tools
Write-Host "🧪 Setting up testing tools..."
& "$PSScriptRoot\testing\setup.ps1"

# Setup frameworks
Write-Host "🖼 Setting up frameworks..."
& "$PSScriptRoot\frameworks\setup.ps1"

Write-Host "✅ Full environment setup complete!" -ForegroundColor Green
