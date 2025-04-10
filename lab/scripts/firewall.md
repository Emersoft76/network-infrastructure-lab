## ✅ firewall.md (Explicação técnica em Markdown)

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
INPUT/FORWARD bloqueados por padrão

OUTPUT liberado para o sistema sair

---

## ✅ Regras permitidas / Allowed traffic

      lo (localhost)

      Conexões já estabelecidas

      SSH (porta 22)

      OpenVPN (porta 1194)

      Ping (ICMP)

---

## 💾 Persistência
```bash
sudo apt install iptables-persistent
sudo netfilter-persistent save
```

Execute com sudo ./firewall.sh em servidores Linux Ubuntu/Debian.
