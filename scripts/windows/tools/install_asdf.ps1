# Install ASDF version manager

# Download ASDF for Windows
Write-Output "Installing ASDF version manager..."
$asdfUrl = "https://github.com/asdf-vm/asdf/releases/latest/download/asdf-windows.zip"
$asdfZipPath = "$env:TEMP\asdf.zip"
$asdfExtractPath = "$HOME\.asdf"

# Download and extract
Invoke-WebRequest -Uri $asdfUrl -OutFile $asdfZipPath
Expand-Archive -Path $asdfZipPath -DestinationPath $asdfExtractPath -Force
Remove-Item $asdfZipPath

# Update PATH
Write-Output "ASDF installed. Add $HOME\.asdf\bin to your PATH manually or use:"
Write-Output "[System.Environment]::SetEnvironmentVariable('PATH', $env:PATH + ';$HOME\.asdf\bin', [System.EnvironmentVariableTarget]::User)"
