###### README.md >> markdown 
# 🛡️ DETECTION RULES
>SOC‑N5  
Règles de détection avancées pour SOC militaire / gouvernemental.  
Ce dossier regroupe l’ensemble des règles **SIGMA**, **YARA** et **KQL** utilisées pour la détection, la chasse et la réponse aux menaces dans le cadre du projet **BLUETeam — SOC‑N5**.

---

## 🎯 Objectifs du dossier
- Détecter rapidement les comportements malveillants.
- Normaliser les règles pour une intégration SIEM/EDR/SOAR.
- Couvrir les techniques MITRE ATT&CK critiques.
- Fournir un socle de détection robuste, extensible et opérationnel.
- Supporter les opérations de chasse (Threat Hunting) et d’investigation.

---

# 📁 Structure du dossier
```text
detection-rules/
│
├── sigma/   → Règles SIGMA (Windows, réseau, AD, web)
├── yara/    → Signatures YARA (malwares, webshells, outils offensifs)
└── kql/     → Requêtes KQL (Microsoft Sentinel / Defender)
```

---

# 🧨 1. SIGMA RULES (`sigma/`)
Règles de détection normalisées, compatibles avec :
- SIEM (Elastic, Splunk, Sentinel, QRadar…)
- Convertisseurs Sigma → backend
- Pipelines SOAR

### 📌 Règles incluses
- **lateral_movement_psexec.yml** — Détection PsExec (T1021.002)  
- **credential_dumping_lsass.yml** — Accès LSASS (T1003)  
- **webshell_activity.yml** — Exécution de commandes via serveur web  
- **ransomware_behavior.yml** — Comportement d’encryptions massives  
- **brute_force_auth.yml** — Tentatives de brute force  
- **data_exfiltration_dns_tunnel.yml** — Exfiltration via DNS tunneling  

### 🎯 Couverture MITRE ATT&CK
- Lateral Movement  
- Credential Access  
- Execution  
- Persistence  
- Exfiltration  
- Impact  

---

# 🧬 2. YARA RULES (`yara/`)
Signatures YARA pour :
- Détection de malwares génériques
- Webshells
- Scripts obfusqués
- Outils de credential dumping

### 📌 Règles incluses
- **ransomware_generic.yar** — Motifs génériques ransomware  
- **credential_tools.yar** — Mimikatz & outils similaires  
- **webshell_php.yar** — Webshells PHP courants  
- **obfuscated_scripts.yar** — Scripts JS/VBS obfusqués  

### 🎯 Utilisation
- Analyse forensique  
- Sandbox  
- EDR custom rules  
- File scanning  

---

# 🔎 3. KQL QUERIES (`kql/`)
Requêtes prêtes à l’emploi pour **Microsoft Sentinel** et **Defender XDR**.

### 📌 Requêtes incluses
- **failed_logons.kql** — Détection brute force  
- **suspicious_psexec.kql** — Usage PsExec  
- **dns_tunneling.kql** — DNS tunneling  
- **ransomware_io.kql** — Indicateurs ransomware  
- **cloud_exfiltration.kql** — Exfiltration vers services cloud  

### 🎯 Cas d’usage
- Threat Hunting  
- Investigation  
- Dashboards SOC  
- Alerting Sentinel  

---

# 🛡️ Doctrine SOC‑N5
Les règles sont conçues pour :
- Environnements sensibles (défense, gouvernement, infrastructures critiques)  
- Opérateurs cyber en posture défensive avancée  
- Détection rapide, fiable, sans faux positifs excessifs  
- Intégration directe dans pipelines CI/CD sécurité  

---

# ✔️ Statut
**BLOC 4 — DETECTION RULES : COMPLET**  
SIGMA ✔️ YARA ✔️ KQL ✔️  
Prêt pour intégration dans le projet BLUETeam.
