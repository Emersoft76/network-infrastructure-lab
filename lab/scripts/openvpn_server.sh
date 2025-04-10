#!/bin/bash

# Instalação básica do OpenVPN e Easy-RSA

sudo apt update
sudo apt install openvpn easy-rsa -y

make-cadir ~/openvpn-ca
cd ~/openvpn-ca

./easyrsa init-pki
./easyrsa build-ca nopass
./easyrsa gen-req server nopass
./easyrsa sign-req server server

cp pki/ca.crt pki/private/server.key pki/issued/server.crt /etc/openvpn/

zcat /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz > /etc/openvpn/server.conf

echo "Servidor OpenVPN pronto para configuração final."
