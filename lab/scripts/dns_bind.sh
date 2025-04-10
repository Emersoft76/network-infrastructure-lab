#!/bin/bash

echo "Instalando Bind9..."
sudo apt update && sudo apt install bind9 bind9utils -y

echo "Criando zona DNS lab.local..."

cat <<EOF | sudo tee /etc/bind/named.conf.local
zone "lab.local" {
    type master;
    file "/etc/bind/db.lab.local";
};
EOF

sudo cp /etc/bind/db.local /etc/bind/db.lab.local
sudo sed -i 's/localhost./ns1.lab.local./' /etc/bind/db.lab.local
sudo sed -i 's/127.0.0.1/192.168.50.10/' /etc/bind/db.lab.local

echo "Reiniciando Bind9..."
sudo systemctl restart bind9
echo "DNS configurado com sucesso!"
