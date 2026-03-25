$zip = "$env:USERPROFILE\Desktop\VELARIS.zip"
$folder = "$env:USERPROFILE\Desktop\VELARIS"

Write-Host "Downloading VELARIS..." -ForegroundColor Cyan

Invoke-WebRequest "https://drive.google.com/uc?export=download&id=1YC8A-AF1j16KrKq6_aitUEdPKRH34Vrt" -OutFile $zip

Write-Host "Extracting..." -ForegroundColor Yellow

Expand-Archive -Path $zip -DestinationPath $folder -Force

Write-Host "Launching..." -ForegroundColor Green

Start-Process "$folder\VELARIS\VELARIS Premium.exe"
