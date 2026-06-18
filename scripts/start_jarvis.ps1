<#
Start helper for Jarvis voice assistant.
Usage: copy .env.example -> .env and fill keys, then run this script in PowerShell:
  .\scripts\start_jarvis.ps1
This script loads environment variables from .env and attempts to start a known entrypoint.
#>

if (-not (Test-Path ".env")) {
    Write-Host ".env not found. Copy .env.example to .env and add your keys." -ForegroundColor Yellow
    exit 1
}

Get-Content .env | Where-Object { $_ -and $_ -notmatch '^[\s#]' } | ForEach-Object {
    $pair = $_ -split '=', 2
    if ($pair.Length -eq 2) {
        $name = $pair[0].Trim()
        $value = $pair[1].Trim()
        Set-Item -Path Env:\$name -Value $value
    }
}

# Try common entrypoints
if (Test-Path "run_jarvis.py") {
    Write-Host "Starting Python Jarvis: run_jarvis.py"
    python run_jarvis.py
    exit $LASTEXITCODE
}

if (Test-Path "app.js") {
    Write-Host "Starting Node Jarvis: app.js"
    node app.js
    exit $LASTEXITCODE
}

Write-Host "No Jarvis entrypoint found. Update `scripts/start_jarvis.ps1` with your start command." -ForegroundColor Yellow
