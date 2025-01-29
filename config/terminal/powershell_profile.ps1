# PowerShell profile configuration

# Set the prompt with the current directory
function prompt {
    "$PWD> "
}

# Set custom aliases
Set-Alias -Name ll -Value "ls -l"
Set-Alias -Name la -Value "ls -A"

# Enable color support
$Host.UI.RawUI.ForegroundColor = "Yellow"

# Add directories to PATH
$env:PATH += ";C:\Program Files\MyApp"
