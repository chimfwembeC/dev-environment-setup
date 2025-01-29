# Set the log file location
$logFile = "$HOME\.dev-setup\logs\verify.log"
$logDirectory = [System.IO.Path]::GetDirectoryName($logFile)

# Create logs directory if it doesn't exist
if (-not (Test-Path -Path $logDirectory)) {
    New-Item -ItemType Directory -Force -Path $logDirectory
}

# Helper function to log success/failure
function Log-Check {
    param (
        [string]$Command,
        [string]$Description
    )

    if (Invoke-Expression $Command) {
        "$Description: ✓" | Out-File -Append -FilePath $logFile
    } else {
        "$Description: ✗" | Out-File -Append -FilePath $logFile
    }
}

# Start logging
"Starting system verification..." | Out-File -FilePath $logFile

# 1. Check if essential tools are installed
Log-Check "Get-Command git -ErrorAction SilentlyContinue" "Git"
Log-Check "Get-Command docker -ErrorAction SilentlyContinue" "Docker"
Log-Check "Get-Command node -ErrorAction SilentlyContinue" "Node.js"
Log-Check "Get-Command python -ErrorAction SilentlyContinue" "Python"
Log-Check "Get-Command java -ErrorAction SilentlyContinue" "Java"
Log-Check "Get-Command go -ErrorAction SilentlyContinue" "Go"

# 2. Check if databases are running (PostgreSQL, MongoDB)
# For PostgreSQL, checking if the service is running
Log-Check "Get-Service -Name postgresql* -ErrorAction SilentlyContinue" "PostgreSQL"

# For MongoDB, checking if the MongoDB service is running
Log-Check "Get-Service -Name mongodb -ErrorAction SilentlyContinue" "MongoDB"

# 3. Check installed package versions
Log-Check "node -v" "Node.js version"
Log-Check "python --version" "Python version"
Log-Check "java -version" "Java version"
Log-Check "go version" "Go version"

# End of verification process
"System verification complete!" | Out-File -Append -FilePath $logFile

# Display the log contents for immediate feedback
Get-Content $logFile
