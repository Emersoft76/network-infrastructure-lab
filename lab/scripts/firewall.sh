#!/bin/bash
# firewall.sh
# Configuração básica de firewall com UFW para servidores Ubuntu
# Basic UFW firewall configuration for Ubuntu servers

echo "Inicializando configuração do firewall (UFW)..."
echo "Starting UFW firewall configuration..."

# Atualiza os pacotes e instala o UFW (caso não esteja instalado)
sudo apt update && sudo apt install ufw -y

# Reseta configurações anteriores
sudo ufw --force reset

# Permite tráfego de entrada para serviços essenciais
sudo ufw allow ssh     # Porta 22 - Acesso remoto
sudo ufw allow http    # Porta 80 - Servidor web (opcional)
sudo ufw allow https   # Porta 443 - Web segura (opcional)

# Bloqueia todo o resto por padrão
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Ativa o firewall
sudo ufw --force enable

# Mostra o status final
sudo ufw status verbose

echo "Firewall configurado com sucesso!"
echo "Firewall successfully configured!"

---

---

## 📝 Explicação técnica / Technical explanation

Este script automatiza a configuração de regras básicas de firewall utilizando `iptables`, aplicando uma política de segurança padrão que nega todas as conexões de entrada e permite somente as essenciais para o funcionamento e administração do servidor.

---

This script automates the setup of basic firewall rules using `iptables`, applying a default-deny security policy and allowing only essential incoming connections needed for server operation and administration.

---

### 🔐 Política padrão / Default policy

```bash
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
```

---

## ✅ Como usar / How to use

    1. Salve o arquivo como firewall.sh

    2. Dê permissão de execução:
    
```bash    
chmod +x firewall.sh
```
    3. Execute com sudo:
```bash    
sudo ./firewall.sh
```

---

## ✅ Próximos scripts sugeridos:

    roteamento.sh — política de roteamento por origem (PBR)

    monitoramento.sh — instalação e configuração inicial do Zabbix Agent
