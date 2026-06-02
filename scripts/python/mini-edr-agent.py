#!/usr/bin/env python3
# SOC-N5 • Mini EDR Agent

import psutil, time, json

def snapshot():
    return {
        "processes": [p.info for p in psutil.process_iter(['pid','name','username'])],
        "connections": [c._asdict() for c in psutil.net_connections()]
    }

while True:
    data = snapshot()
    with open("edr-log.json", "a") as f:
        f.write(json.dumps(data) + "\n")
    time.sleep(10)
