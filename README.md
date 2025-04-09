# Infraestrutura Completa de Redes – Laboratório Profissional  
**Simulação prática de ambiente corporativo para estudo e demonstração profissional**

Este repositório apresenta uma infraestrutura de redes completa baseada em Linux (Ubuntu Server), com foco em boas práticas de gerenciamento, segurança e monitoramento de redes. Foi desenvolvido como parte do meu portfólio técnico, com base na minha formação superior em **Gerenciamento de Redes de Computadores** pela Universidade Paulista (UNIP), e alinhado às funções reais de um **Administrador de Redes (Network Administrator)**.

---

# Full Network Infrastructure – Professional Lab  
**Practical simulation of a corporate network environment for study and portfolio**

This repository presents a complete Linux-based (Ubuntu Server) network infrastructure, focused on best practices in network management, security, and monitoring. It was developed as part of my technical portfolio, based on my background in **Computer Network Management** (UNIP – Universidade Paulista), and aligned with the real responsibilities of a **Network Administrator**.

---

## 🎯 Objetivos / Objectives

- Criar um laboratório completo de redes e serviços corporativos
- Simular cenários reais de infraestrutura e gestão
- Utilizar ferramentas amplamente adotadas no mercado
- Demonstrar conhecimento técnico e capacidade de planejamento de redes

---

## 🧱 Infraestrutura Proposta / Proposed Infrastructure

### 1. Camada Física (Physical Layer)

| Item                 | Especificação sugerida                      |
|----------------------|---------------------------------------------|
| Switch gerenciável   | Layer 2/3, suporte a VLANs e SNMP           |
| Roteador (virtual)   | pfSense ou Linux + iptables/nftables        |
| Cabeamento estruturado | Categoria 6 (Cat6), patch panels, racks  |
| Servidores físicos/VMs | Ubuntu Server 22.04, 2 a 4 GB RAM por VM |

---

### 2. Serviços implementados / Services implemented

| Serviço             | Ferramenta sugerida                         |
|---------------------|---------------------------------------------|
| DHCP                | `isc-dhcp-server`                           |
| DNS interno         | `Bind9`                                     |
| Servidor de arquivos| `Samba` ou `Nextcloud`                      |
| Firewall            | `iptables`, `ufw` ou `pfSense`              |
| VPN                 | `WireGuard` ou `OpenVPN`                    |
| Monitoramento       | `Zabbix Agent`, `Grafana`, `Prometheus`     |
| IDS/IPS             | `Snort` ou `Suricata`                       |
| Gerenciamento remoto| `SSH (via MobaXterm)`                       |

---

## 🧰 Ferramentas Utilizadas / Tools Used

| Função               | Ferramenta                                 |
|----------------------|--------------------------------------------|
| Acesso remoto        | **MobaXterm** (no Windows)                 |
| Virtualização        | **VirtualBox** (para laboratório local)    |
| SO base              | **Ubuntu Server 22.04 LTS**                |
| Diagnóstico de rede  | `nmap`, `iperf3`, `tcpdump`, `traceroute`  |
| Automação e scripts  | `bash`, `Ansible` (opcional)               |
| Visualização         | `Draw.io`, `Lucidchart`, `Markdown`        |

---

## 📁 Organização do Projeto / Project Structure

```bash
infraestrutura-completa-redes/
├── README.md
├── docs/
├── lab/
├── projetos/
└── LICENSE
```

---

## 🎓 Projetos Acadêmicos Complementares

Projetos desenvolvidos durante a graduação em Gerenciamento de Redes de Computadores (UNIP - Brasília/DF, 2008), e estudos complementares.

### 1. [VoIP Technology Promoting – Projeto Acadêmico](https://github.com/Emersoft76/VoIP-Protocols-Comparison-Lab) 

    Projeto multidisciplinar com foco na promoção da tecnologia VoIP e integração entre redes de dados e telefonia.
    Multidisciplinary academic project focused on VoIP technology and convergence between data and voice networks.

2. ### 2. [XYZ Company Infrastructure – Projeto Acadêmico](https://github.com/Emersoft76/xyz-company-infra)

    Simulação da criação da infraestrutura de uma empresa com interligação entre matriz e filiais por VPN.
    Simulation of a complete corporate infrastructure, connecting HQ and branches through secure VPN.

3. ### 3. [Modelo OSI – Estudo Técnico](https://github.com/Emersoft76/modelo-osi-review)

    Revisão detalhada do Modelo OSI com camadas, protocolos e exemplos de aplicação.
    Detailed OSI Model review with layers, protocols and real-world examples.

## 📄 Licença / License

Este projeto está licenciado sob a MIT License
