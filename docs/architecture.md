###### docs/architecture.md >> markdown 
# 🛰️ Architecture SOC
>BlueTeam 
- SOC‑N5

Ce document contient les diagrammes d’architecture du SOC.

---

🛰️ Architecture Globale

(voir README)

---

🛰️ Pipelines SIEM

`text
ELK      → Beats → Logstash → Elasticsearch → Kibana
Sentinel → Connectors → Analytics → Hunting → SOAR
Splunk   → UF/HF → Indexers → Search Head → Correlation
QRadar   → Collectors → DSM → Ariel DB → Offenses
`

---

🧠 MITRE ATT&CK Coverage

(voir README)

---

🔥 Flux IR

(voir incident_response.md)
`

---
