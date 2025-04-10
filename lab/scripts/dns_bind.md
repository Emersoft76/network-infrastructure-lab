# 📡 dns_bind.sh – Configuração DNS Bind9 / Bind9 DNS Setup

---

## 📝 Explicação técnica / Technical explanation

Este script instala o Bind9 e configura uma zona DNS básica (`lab.local`) com endereço local `192.168.50.10`.

This script installs Bind9 and sets up a basic DNS zone (`lab.local`) pointing to local address `192.168.50.10`.

---

## 📦 Requisitos / Requirements

- Ubuntu Server 20.04+
- IP do servidor: 192.168.50.10

---

## 🚀 Como executar / How to run

```bash
sudo chmod +x dns_bind.sh
sudo ./dns_bind.sh
```
---

Após execução, use dig, nslookup ou ping com lab.local para testar.
