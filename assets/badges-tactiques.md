###### badges-tactiques.md >> markdown
```md
Ces badges seront :
- visuels (ASCII tactique)  
- stylés (military-grade)  
- cohérents avec ton identité SOC‑N5  
- compatibles terminal PowerShell / Bash / Python  
- sans dépendances  
- réutilisables dans tous tes scripts  
Et surtout : ils donneront une identité visuelle premium à tes outils BLUETeam.
```

---

# 🟦 1. Badges 
>tactiques ASCII
- Version PowerShell (.ps1)

Ces badges sont optimisés pour PowerShell (couleurs ANSI compatibles Windows 10+).

### 🔹 Badge SOC‑N5
```powershell
$badge_socn5 = @"
███████╗ ██████╗  ██████╗     ███╗   ██╗███████╗
██╔════╝██╔═══██╗██╔════╝     ████╗  ██║██╔════╝
███████╗██║   ██║██║  ███╗    ██╔██╗ ██║█████╗  
╚════██║██║   ██║██║   ██║    ██║╚██╗██║██╔══╝  
███████║╚██████╔╝╚██████╔╝    ██║ ╚████║███████╗
╚══════╝ ╚═════╝  ╚═════╝     ╚═╝  ╚═══╝╚══════╝
"@
Write-Host $badge_socn5 -ForegroundColor Cyan
```

---

### 🔹 Badge “IR Module”
```powershell
$badge_ir = @"
[ IR-MODULE ]  ████ INCIDENT RESPONSE ████
"@
Write-Host $badge_ir -ForegroundColor Yellow
```

---

### 🔹 Badge “Threat Hunting”
```powershell
$badge_hunt = @"
[ THREAT-HUNT ]  🎯  TACTICAL HUNTING ENABLED
"@
Write-Host $badge_hunt -ForegroundColor Green
```

---

### 🔹 Badge “Detection Engine”
```powershell
$badge_detect = @"
[ DETECTION ]  🔍  SIGMA • YARA • KQL
"@
Write-Host $badge_detect -ForegroundColor Magenta
```

---

### 🔹 Badge “Forensic Mode”
```powershell
$badge_forensic = @"
[ FORENSIC ]  🧬  ARTEFACT COLLECTION MODE
"@
Write-Host $badge_forensic -ForegroundColor Blue
```

---

### 🟦 2. Badges 
>tactiques ASCII
- Version Python (.py)

Ces badges utilisent colorama si dispo, sinon fallback sans couleur.

### 🔹 Préambule Python
>(à mettre en haut de chaque script)
```python
try:
    from colorama import Fore, Style, init
    init()
except:
    class Dummy: RESET = ""
    Fore = Style = Dummy()
```

---

### 🔹 Badge SOC‑N5
```python
badge_socn5 = f"""\n{Fore.CYAN}
███████╗ ██████╗  ██████╗     ███╗   ██╗███████╗
██╔════╝██╔═══██╗██╔════╝     ████╗  ██║██╔════╝
███████╗██║   ██║██║  ███╗    ██╔██╗ ██║█████╗  
╚════██║██║   ██║██║   ██║    ██║╚██╗██║██╔══╝  
███████║╚██████╔╝╚██████╔╝    ██║ ╚████║███████╗
╚══════╝ ╚═════╝  ╚═════╝     ╚═╝  ╚═══╝╚══════╝
{Style.RESET_ALL}
"""
print(badge_socn5)
```

---

### 🔹 Badge “IR Module”
```python
print(f"{Fore.YELLOW}[ IR-MODULE ]  ████ INCIDENT RESPONSE ████{Style.RESET_ALL}")
```

---

### 🔹 Badge “Threat Hunting”
```python
print(f"{Fore.GREEN}[ THREAT-HUNT ]  🎯  TACTICAL HUNTING ENABLED{Style.RESET_ALL}")
```

---

### 🔹 Badge “Detection Engine”
```python
print(f"{Fore.MAGENTA}[ DETECTION ]  🔍  SIGMA • YARA • KQL{Style.RESET_ALL}")
```

---

### 🔹 Badge “Forensic Mode”
```python
print(f"{Fore.BLUE}[ FORENSIC ]  🧬  ARTEFACT COLLECTION MODE{Style.RESET_ALL}")
```

---

### 🟦 3. Badges tactiques
>Version “Header Script”
- (PS1 & PY)

Tu peux ajouter ce header au début de chaque script pour un style SOC‑N5 premium :

### 🔹 PowerShell
```powershell
Write-Host "==========================================" -ForegroundColor DarkCyan
Write-Host "      BLUETeam — SOC‑N5  |  SCRIPT MODE" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor DarkCyan
```

### 🔹 Python
```python
print(f"{Fore.CYAN}==========================================")
print(f"      BLUETeam — SOC‑N5  |  SCRIPT MODE")
print(f"=========================================={Style.RESET_ALL}")
```

---

### 🟦 4. Badges tactiques
>Version “Footer Script”

### 🔹 PowerShell
```powershell
Write-Host "[+] Mission accomplie — SOC‑N5" -ForegroundColor Green
```

### 🔹 Python
```python
print(f"{Fore.GREEN}[+] Mission accomplie — SOC‑N5{Style.RESET_ALL}")
```

---
