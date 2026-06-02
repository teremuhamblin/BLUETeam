# 🎯 Detection Engineering — BlueTeam SOC‑N5

L’ingénierie de détection est le cœur du SOC.  
Elle permet d’identifier les comportements malveillants via :

- Règles Sigma
- Règles YARA
- Pipelines SIEM
- Détection comportementale
- Corrélation multi‑sources

---

# 🧩 Architecture de Détection

```text
Logs → Normalisation → Enrichissement → Corrélation → Alerting → IR
