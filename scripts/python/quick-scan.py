import psutil, json

data = {
    "top_cpu": [p.info for p in psutil.process_iter(['pid','name','cpu_percent'])][:10]
}

print(json.dumps(data, indent=2))
