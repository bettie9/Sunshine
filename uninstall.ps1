[CmdletBinding()]
param([switch]$PurgeData)

$ErrorActionPreference = 'Stop'
$ProgressPreference    = 'SilentlyContinue'

$keyPaths = @(
    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
    'HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
)

$entry = $null
foreach ($p in $keyPaths) {
    $hit = Get-ItemProperty -Path $p -ErrorAction SilentlyContinue |
           Where-Object { $_.DisplayName -and $_.DisplayName -match '^Sunshine($|\s|_)' } |
           Select-Object -First 1
    if ($hit) { $entry = $hit; break }
}

if (-not $entry) {
    Write-Host "Sunshine is not installed." -ForegroundColor Yellow
} else {
    $uninstall = $entry.QuietUninstallString
    if (-not $uninstall) { $uninstall = $entry.UninstallString }
    if (-not $uninstall) { throw "No UninstallString for Sunshine. Remove via Settings -> Apps." }
    if ($uninstall -notmatch '/S\b' -and -not $entry.QuietUninstallString) { $uninstall = "$uninstall /S" }

    Write-Host ">> Uninstalling $($entry.DisplayName) $($entry.DisplayVersion)" -ForegroundColor Cyan
    Start-Process -FilePath 'cmd.exe' -ArgumentList '/c', $uninstall -Wait | Out-Null
}

if (-not $PurgeData) {
    $ans = Read-Host "Also delete saved skins, hashes, and configuration? (y/N)"
    if ($ans -match '^(y|yes)$') { $PurgeData = $true }
}

if ($PurgeData) {
    foreach ($t in @((Join-Path $env:APPDATA 'Sunshine'), (Join-Path $env:LOCALAPPDATA 'Sunshine'))) {
        if (Test-Path $t) {
            Write-Host ">> Removing $t" -ForegroundColor Cyan
            Remove-Item -LiteralPath $t -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
}

Write-Host "Sunshine removed." -ForegroundColor Green
