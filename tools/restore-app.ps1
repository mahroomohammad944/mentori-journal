$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$payloadDir = Join-Path $root 'payload'
$outDir = Join-Path $root 'app'
$outFile = Join-Path $outDir 'mentori-journal.html'
$encoded = ((Get-ChildItem (Join-Path $payloadDir 'app-v14.14.b64.*') | Sort-Object Name | ForEach-Object { Get-Content $_.FullName -Raw }) -join '')
$bytes = [Convert]::FromBase64String($encoded)
$input = New-Object IO.MemoryStream(,$bytes)
$gzip = New-Object IO.Compression.GzipStream($input,[IO.Compression.CompressionMode]::Decompress)
$output = New-Object IO.MemoryStream
$gzip.CopyTo($output)
$gzip.Dispose(); $input.Dispose()
New-Item -ItemType Directory -Force $outDir | Out-Null
[IO.File]::WriteAllBytes($outFile,$output.ToArray())
$output.Dispose()
Write-Host "Restored $outFile"
