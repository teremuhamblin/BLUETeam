#!/usr/bin/env python3
# SOC-N5 • IOC Enricher

import requests, json, sys

ioc = sys.argv[1]

url = f"https://api.abuseipdb.com/api/v2/check?ipAddress={ioc}"

headers = {"Key": "YOUR_API_KEY"}

r = requests.get(url, headers=headers)

print(json.dumps(r.json(), indent=2))
