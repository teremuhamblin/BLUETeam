---
title: "Heatmap MITRE ATT&CK"
layout: default
---

# 🔥 Heatmap MITRE ATT&CK — SOC‑N5

Cette heatmap représente la couverture tactique du SOC‑N5 selon les techniques MITRE ATT&CK.

<div class="mitre-heatmap">
  {% for i in (1..11) %}
    <div class="mitre-row">
      {% for j in (1..12) %}
        <div class="mitre-cell"></div>
      {% endfor %}
    </div>
  {% endfor %}
</div>

---

# 📌 Légende
- 🔵 Couverture forte  
- 🟦 Couverture moyenne  
- ⚫ Non couvert
