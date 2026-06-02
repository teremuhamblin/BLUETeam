#!/usr/bin/env python3
# SOC-N5 • Threat Report Parser

import json

with open("report.json") as f:
    data = json.load(f)

for item in data.get("ioc", []):
    print(f"[IOC] {item}")
