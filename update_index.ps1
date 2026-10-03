# Rescans this folder and rewrites the game list embedded in index.html.
# Run after adding or removing a game file:
#   powershell -ExecutionPolicy Bypass -File update_index.ps1
$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$index = Join-Path $dir 'index.html'
$files = Get-ChildItem -Path $dir -Filter *.html |
    Where-Object { $_.Name -ne 'index.html' -and $_.Length -gt 0 } |
    Sort-Object Name | ForEach-Object { '"' + $_.Name + '"' }
$line = '  var FILES = [' + ($files -join ', ') + '];'
$text = [IO.File]::ReadAllText($index)
$text = [regex]::Replace($text, '(?s)(/\*FILES-START\*/\r?\n).*?(\r?\n\s*/\*FILES-END\*/)', { param($m) $m.Groups[1].Value + $line + $m.Groups[2].Value })
[IO.File]::WriteAllText($index, $text, (New-Object Text.UTF8Encoding $false))
Write-Host "index.html updated with $($files.Count) games"
