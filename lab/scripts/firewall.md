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

---

### ✅ `configure_network.sh` (Script de rede)

```bash
#!/bin/bash

# Configuração de IP estático e hostname em Ubuntu Server

echo "Definindo hostname para servidor-lab..."
hostnamectl set-hostname servidor-lab

echo "Configurando IP estático na interface enp0s3..."

cat <<EOF > /etc/netplan/00-static.yaml
network:
  version: 2
  ethernets:
    enp0s3:
      dhcp4: no
      addresses: [192.168.50.10/24]
      gateway4: 192.168.50.1
      nameservers:
        addresses: [192.168.50.1, 8.8.8.8]
EOF

netplan apply

echo "Configuração de rede aplicada com sucesso."
```
