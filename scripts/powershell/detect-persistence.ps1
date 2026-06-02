<# 
  SOC-N5 • Detect Persistence
  Recherche : RunKeys, Scheduled Tasks, Services suspects
#>

Write-Host "[+] Détection de persistance — SOC-N5" -ForegroundColor Cyan

$runKeys = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Run
$tasks = Get-ScheduledTask
$services = Get-Service | Where-Object {$_.Status -eq "Running"}

$results = [PSCustomObject]@{
    RunKeys = $runKeys
    Tasks = $tasks
    Services = $services
}

$results | ConvertTo-Json | Out-File "persistence-report.json"

Write-Host "[+] Rapport généré : persistence-report.json" -ForegroundColor Green
