#!/usr/bin/env python3
# SOC-N5 • IOC Extractor

import re, sys, json

data = sys.stdin.read()

patterns = {
    "ip": r"\b(?:\d{1,3}\.){3}\d{1,3}\b",
    "domain": r"\b[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\b",
    "hash": r"\b[a-fA-F0-9]{32,64}\b"
}

results = {k: re.findall(v, data) for k, v in patterns.items()}

print(json.dumps(results, indent=2))
