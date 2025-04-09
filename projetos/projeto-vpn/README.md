# Projeto: VPN Segura para Acesso Remoto  
**/projetos/projeto-vpn/README.md**

Este projeto simula a implantação de uma VPN segura entre matriz, filial ou usuários remotos, utilizando **WireGuard**, uma solução moderna, leve e altamente eficiente para ambientes corporativos.

---

# Project: Secure VPN for Remote Access  
**/projetos/projeto-vpn/README.md**

This project simulates the deployment of a secure VPN between headquarters, branch offices or remote users using **WireGuard**, a modern, lightweight and high-performance VPN solution for corporate environments.

---

## 🎯 Objetivo / Objective

- Criar uma VPN entre dois pontos ou entre usuário e rede
- Permitir acesso seguro aos serviços internos (SSH, Samba, DNS)
- Garantir criptografia ponta-a-ponta e autenticação com chave

---

## 🔐 Solução escolhida / Chosen solution

| VPN              | Motivo da escolha                                  |
|------------------|----------------------------------------------------|
| **WireGuard**    | Alta performance, fácil configuração, criptografia moderna |
| (ou OpenVPN)     | Caso deseje integração com clientes legados        |

---

## 🧱 Infraestrutura Simulada / Simulated Topology

[ Usuário remoto ] | ( Internet ) | [ Roteador / pfSense ] | [ Ubuntu Server com WireGuard ] | [ Rede interna (LAN/VLAN) ]


---

## ⚙️ Componentes do Projeto / Project Components

| Item                    | Descrição                                   |
|-------------------------|---------------------------------------------|
| `ubuntu-server`         | Servidor VPN com WireGuard instalado        |
| `cliente-linux`         | Cliente remoto com WireGuard também         |
| Porta usada             | UDP 51820 (por padrão)                      |
| Método de autenticação  | Chaves públicas/privadas                    |
| Túnel criado            | Interface `wg0` com IPs internos (`10.10.10.1/24`) |

---

## ⚙️ Comandos principais / Main commands

### Instalar o WireGuard

```bash
sudo apt update
sudo apt install wireguard -y
```

### Gerar pares de chave

```bash
umask 077
wg genkey | tee privatekey | wg pubkey > publickey
```
Faça isso no servidor e no cliente — cada um com seu par.

## 📁 Estrutura do projeto / Project structure

projeto-vpn/
├── README.md
├── servidor/
│   ├── wg0.conf
│   └── chave-publica-cliente.txt
├── cliente/
│   ├── wg0.conf
│   └── chave-publica-servidor.txt
└── scripts/
    ├── iniciar-vpn.sh
    └── status-vpn.sh

---

## 🔄 Exemplo de configuração WireGuard (wg0.conf)

Servidor:

[Interface]
PrivateKey = <chave_privada_servidor>
Address = 10.10.10.1/24
ListenPort = 51820

[Peer]
PublicKey = <chave_publica_cliente>
AllowedIPs = 10.10.10.2/32

Cliente:

[Interface]
PrivateKey = <chave_privada_cliente>
Address = 10.10.10.2/24

[Peer]
PublicKey = <chave_publica_servidor>
Endpoint = IP_PUBLICO_DO_SERVIDOR:51820
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25

---

## 🧪 Testes realizados / Tests performed

  Tunelamento funcional entre cliente e servidor

  Ping entre os IPs da VPN (10.10.10.1 ↔ 10.10.10.2)

  Acesso a serviços internos via VPN (ex: SSH no 192.168.30.x)

  Teste de conexão com wg e ping, traceroute

---

## ✅ Benefícios

  Simples, rápido, seguro

  Criptografia moderna (ChaCha20, Poly1305)

  Suporte nativo em Linux, Windows, Android e iOS

  Integração com firewall (UFW ou iptables)

---
  
## ✅ Próximos projeto sugerido:

  projeto-monitoramento/ — configuração e aplicação do Zabbix para monitorar a infraestrutura
