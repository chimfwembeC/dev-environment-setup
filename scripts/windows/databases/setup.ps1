Write-Host "🗄 Setting up databases..." -ForegroundColor Green

# Run each database installation script
& "$PSScriptRoot\install_postgresql.ps1"
& "$PSScriptRoot\install_mysql.ps1"
& "$PSScriptRoot\install_mongodb.ps1"
# & "$PSScriptRoot\install_redis.ps1"

Write-Host "✅ Database setup complete!" -ForegroundColor Green
