<# 
  SOC-N5 • Triage System
  Objectif : Collecte rapide d'informations critiques sur un endpoint
#>

Write-Host "[+] TRIAGE SYSTEM — SOC-N5" -ForegroundColor Cyan

$triage = @{
    Hostname = $env:COMPUTERNAME
    User = $env:USERNAME
    Date = (Get-Date)
    Processes = (Get-Process | Select-Object Name,Id,CPU)
    Network = (Get-NetTCPConnection | Select-Object LocalAddress,RemoteAddress,State)
    Services = (Get-Service | Select-Object Name,Status)
}

$triage | ConvertTo-Json | Out-File "triage-output.json"

Write-Host "[+] Triage terminé — fichier : triage-output.json" -ForegroundColor Green
