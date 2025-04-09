# Topologia Lógica da Infraestrutura de Redes  
**/docs/topologia-logica.md**

Este documento descreve a estrutura lógica da rede implementada no laboratório, incluindo os principais segmentos, dispositivos e serviços, organizados por camadas e função.

---

# Logical Topology of the Network Infrastructure  
**/docs/topologia-logica.md**

This document describes the logical structure of the network lab, including key segments, devices, and services, organized by layer and function.

---

## 🧭 Visão Geral / Overview

[Internet] | | (WAN) [ Roteador/Firewall ] | (LAN principal - 192.168.0.0/24) | +-------------------------+ | | | [Switch Gerenciável] -- [Access Point Wi-Fi] | | | +-------------------+---------------------+ | | | | | [Servidor Ubuntu] [Servidor Zabbix] [Servidor VPN] | | | | | +--------- VLAN 10 / 20 / 30 ---------+ | (Rede segmentada)


---

## 🔗 Segmentos e Serviços / Segments and Services

| Rede/Sub-rede        | Descrição                                | IP/Subnet               |
|----------------------|------------------------------------------|--------------------------|
| `WAN`                | Acesso externo à internet                 | DHCP externo             |
| `LAN principal`      | Segmento base da rede local               | `192.168.0.0/24`         |
| `VLAN 10 - ADMIN`    | Gerência de rede (SSH, Zabbix, Web GUI)  | `192.168.10.0/24`        |
| `VLAN 20 - USERS`    | Acesso de usuários (desktop, Wi-Fi)      | `192.168.20.0/24`        |
| `VLAN 30 - SERVERS`  | Serviços internos                        | `192.168.30.0/24`        |

---

## 🖥️ Servidores e Funções / Servers and Roles

| Servidor             | Função principal                          | IP exemplo              |
|----------------------|-------------------------------------------|--------------------------|
| `ubuntu-lab`         | Base do laboratório / DHCP / DNS / Samba | `192.168.30.10`         |
| `zabbix-agent`       | Monitorado pelo Zabbix                    | `192.168.30.20`         |
| `vpn-server`         | Servidor WireGuard ou OpenVPN             | `192.168.30.30`         |

---

## ✅ Considerações

- VLANs isolam tráfego e melhoram a segurança
- Firewall no roteador controla entrada/saída da rede
- A VPN permite acesso seguro remoto
- Todos os servidores têm IP fixo
- DHCP entrega IPs dinamicamente para clientes

---

## 📌 Alternativas para visualização gráfica

- Você pode importar esta topologia no [draw.io](https://app.diagrams.net/)
- Ou exportar como `.svg` e incluir na pasta `/docs/`

---

## Próximo passo sugerido:
- Documentar os projetos práticos na pasta `/projetos/`
