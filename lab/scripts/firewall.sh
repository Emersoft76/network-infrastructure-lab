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
