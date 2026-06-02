###### docs/detection_engineering.md
# 🎯 Detection Engineering
>BlueTeam SOC‑N5
- L’ingénierie de détection est le cœur du SOC.  
- Elle permet d’identifier les comportements malveillants via :
```text
>> - Règles Sigma
   - Règles YARA
   - Pipelines SIEM
   - Détection comportementale
   - Corrélation multi‑sources
```

---

### 🧩 Architecture de Détection
```text
Logs → Normalisation → Enrichissement → Corrélation → Alerting → IR
```

---

### 📁 Règles Sigma
>Organisation :
```text
detection-rules/sigma/
├── windows/
├── linux/
├── cloud/
└── active_directory/
```

Chaque règle inclut :
- Description
- MITRE mapping
- Logsource
- Conditions
- Niveau de sévérité

---

### 🧬 Règles YARA
>Organisation :
```text
detection-rules/yara/
├── malware/
├── anomalies/
└── apt/
```

>Utilisation :
```text
- Analyse mémoire
- Analyse fichiers
- Détection APT
- Détection ransomware
```

---

### 🛰️ Pipelines SIEM
- Voir architecture.md pour les pipelines `ELK / Sentinel / Splunk / QRadar`.

---

### 🛠️ Outils d’Ingénierie
```bash
- mitre-mapper.ps1
- siempipelinebuilder.py
- threatintelfetcher.py
```

---
