---
title: "Techniques MITRE — SOC‑N5"
layout: default
---

# 🎯 Techniques MITRE — SOC‑N5  
### *Tactiques, Techniques & Procédures (TTP)*

Ce document regroupe les **techniques MITRE ATT&CK** les plus utilisées dans les campagnes observées par le SOC‑N5.

---

## 🟦 Initial Access

### **T1566 — Phishing**
- Envoi d’e-mails malveillants
- Pièces jointes contenant macros
- Liens vers payloads distants

### **T1190 — Exploitation of Public-Facing Applications**
- Exploits RCE
- Webshells
- Upload arbitraire

---

## 🟦 Execution

### **T1059 — Command & Scripting Interpreter**
- PowerShell
- Bash
- Python
- WScript

### **T1204 — User Execution**
- Fichiers .lnk
- Installateurs piégés
- PDF malveillants

---

## 🟦 Persistence

### **T1547 — Boot or Logon Autostart Execution**
- RunKeys
- Services persistants
- DLL hijacking

---

## 🟦 Lateral Movement

### **T1021 — Remote Services**
- SMB
- WinRM
- SSH

---

## 🟦 Exfiltration

### **T1041 — Exfiltration Over C2 Channel**
- DNS tunneling
- HTTPS exfil
- Cloud exfil

---

Fin de transmission.
