<# 
  SOC-N5 • Memory Dump
  Utilise : comsvcs.dll
#>

Write-Host "[+] Dump mémoire — SOC-N5" -ForegroundColor Cyan

$pid = Read-Host "PID du processus à dumper"
$path = "dump-$pid.dmp"

rundll32.exe C:\Windows\System32\comsvcs.dll, MiniDump $pid $path full

Write-Host "[+] Dump généré : $path" -ForegroundColor Green
