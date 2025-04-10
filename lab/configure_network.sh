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
