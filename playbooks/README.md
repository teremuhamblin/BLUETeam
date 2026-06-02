###### README.md >> markdown 
# 📁 PLAYBOOKS
>SOC‑N5  
Playbooks opérationnels pour analystes N1 → N3, alignés MITRE ATT&CK, doctrine BlueTeam militaire et exigences SOC‑N5.  
Chaque playbook fournit une procédure claire, rapide et exploitable en situation réelle.

---

## 🎯 Objectifs du dossier
- Standardiser les réponses aux incidents.
- Réduire le temps de réaction (MTTR).
- Fournir des procédures tactiques prêtes à l’emploi.
- Harmoniser les actions N1/N2/N3.
- Assurer une traçabilité complète des actions.

---

## 📚 Contenu des playbooks

### 🔍 Investigation & Intrusion
- **phishing_investigation.md** — Analyse d’un mail ou artefact suspect.  
- **malware_triage.md** — Triage rapide d’un binaire ou d’un comportement malveillant.  
- **webshell_detection.md** — Détection et suppression d’une webshell sur serveur exposé.

### 🔐 Accès & Mouvement
- **bruteforce_response.md** — Réponse à une attaque par force brute.  
- **lateral_movement_hunt.md** — Chasse au mouvement latéral (RDP, SMB, PsExec, WMI).  
- **privilege_escalation.md** — Détection d’élévation de privilèges locale ou AD.

### 📤 Exfiltration & Impact
- **data_exfiltration.md** — Détection et containment d’une exfiltration de données.  
- **ransomware_containment.md** — Procédure de confinement ransomware.

### 🌐 Réseau & Disponibilité
- **ddos_response.md** — Réponse à une attaque DDoS.

### 🧍 Menace interne
- **insider_threat.md** — Gestion d’un utilisateur malveillant ou négligent.

---

## 🧭 Structure type d’un playbook
Chaque playbook suit une structure standardisée :

- **Objectif** — Ce que le playbook doit accomplir.  
- **Indicateurs clés** — Signaux d’alerte.  
- **Procédure N1** — Actions rapides, filtrage, escalade.  
- **Procédure N2** — Analyse approfondie, collecte de preuves.  
- **Procédure N3** — Forensic, containment avancé, remédiation.  
- **Éléments de preuve** — Logs, artefacts, captures.  
- **Critères de clôture** — Conditions de fin d’incident.

---

## 🛡️ Doctrine SOC‑N5
Les playbooks sont conçus pour :
- Opérateurs cyber en environnement critique.  
- SOC militaires ou gouvernementaux.  
- Posture défensive avancée (BlueTeam).  
- Réponse rapide, concise, orientée action.

---

## 📌 Notes
- Tous les playbooks sont modifiables selon le contexte opérationnel.  
- Les procédures sont compatibles avec SIEM, EDR, SOAR et outils forensics standards.  
- Les playbooks peuvent être automatisés dans un pipeline SOAR.

---

## ✔️ Statut
**BLOC 3 — PLAYBOOKS : COMPLET**  
Prêt pour intégration dans le projet BLUETeam.
