# 🛡️ firewall.sh – Explicação Técnica  
**Configuração automatizada de firewall com iptables**

---

## 📝 Explicação técnica / Technical explanation

Este script aplica regras básicas de firewall com iptables, bloqueando conexões indesejadas e permitindo somente tráfego essencial, como SSH, OpenVPN e ICMP.

---

## 🔐 Política padrão / Default policy

```bash
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
```
---

## ✅ Regras permitidas / Allowed traffic

      lo (localhost)

      Conexões já estabelecidas

      SSH (porta 22)

      OpenVPN (porta 1194)

      Ping (ICMP)

      ---

##💾 Persistência / Persistence
```bash
sudo apt install iptables-persistent
sudo netfilter-persistent save
```

---

## 🚀 Como executar / How to run
```bash
sudo ./firewall.sh
```

---

💡 Ideal para servidores Linux baseados em Ubuntu ou Debian.
