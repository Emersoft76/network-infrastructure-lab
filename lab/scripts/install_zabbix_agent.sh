#!/bin/bash

# 🧩 Script: install_zabbix_agent.sh
# Instala e configura o Zabbix Agent em servidores Ubuntu
# Autor: Seu Nome | Data: 2024

echo "🔧 Atualizando pacotes..."
sudo apt update

echo "📦 Instalando o Zabbix Agent..."
sudo apt install zabbix-agent -y

echo "🛠️ Configurando o agente para apontar para o Zabbix Server..."

# Altere o IP abaixo conforme sua rede
ZBX_SERVER="192.168.50.100"

sudo sed -i "s/^Server=.*/Server=$ZBX_SERVER/" /etc/zabbix/zabbix_agentd.conf
sudo sed -i "s/^ServerActive=.*/ServerActive=$ZBX_SERVER/" /etc/zabbix/zabbix_agentd.conf
sudo sed -i "s/^Hostname=.*/Hostname=$(hostname)/" /etc/zabbix/zabbix_agentd.conf

echo "🚀 Reiniciando o serviço do agente..."
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent

echo "✅ Zabbix Agent instalado e configurado com sucesso!"
