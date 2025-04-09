# Equipamentos Recomendados para Infraestrutura de Redes  
**/docs/equipamentos-recomendados.md**

Este documento lista os principais equipamentos e ferramentas recomendados para compor uma infraestrutura de redes corporativa funcional, segura e escalável, tanto em ambientes físicos quanto simulados em laboratório.

---

# Recommended Equipment for Network Infrastructure  
**/docs/equipamentos-recomendados.md**

This document lists the key hardware and tools recommended to build a functional, secure, and scalable corporate network infrastructure — for both real and lab environments.

---

## 🧱 Equipamentos físicos recomendados / Physical hardware

### 🔌 Cabeamento e conectividade
| Equipamento            | Função                                   |
|------------------------|-------------------------------------------|
| Cabos Cat6 / Cat6A     | Conectividade de rede (1000 Mbps ou mais) |
| Patch cords            | Conexão entre patch panel e switch        |
| Patch panel (24/48p)   | Organização e terminação de cabos         |
| Racks 19” padrão       | Acomoda servidores e switches             |

---

### 📶 Equipamentos ativos de rede
| Equipamento           | Função                                        |
|-----------------------|-----------------------------------------------|
| Switch gerenciável    | VLANs, SNMP, trunking, QoS                    |
| Roteador de borda     | Controle de acesso à internet (pfSense, Cisco, Mikrotik) |
| Access Point Wi-Fi    | Conectividade sem fio segura e controlada    |

---

### 🖥️ Servidores e dispositivos
| Equipamento            | Função                                      |
|------------------------|----------------------------------------------|
| Servidor rack (1U/2U)  | Hospedar serviços de rede                   |
| Estações administrativas| Gestão local, acesso remoto, testes         |
| UPS (No-break)         | Manter operação em quedas de energia        |
| Switch KVM             | Compartilhamento de teclado/mouse/monitor   |

---

## 💻 Ambientes simulados / Virtual lab environment

### 🧪 Software e ferramentas
| Ferramenta         | Função principal                            |
|--------------------|---------------------------------------------|
| **VirtualBox**     | Criar máquinas virtuais                     |
| **MobaXterm**      | Acesso remoto via SSH e ferramentas de rede |
| **Ubuntu Server**  | Sistema operacional base para servidores    |
| **GNS3 / EVE-NG**  | Simulação de redes complexas (avançado)     |

---

## 🧰 Ferramentas de apoio / Support tools

| Ferramenta          | Para quê serve                              |
|---------------------|----------------------------------------------|
| Testador de cabos   | Diagnóstico de conectividade física          |
| Etiquetadora        | Organização de rack e cabeamento             |
| Multímetro          | Verificação elétrica básica                  |
| Ferramentas de crimpagem | Terminação de cabos RJ45               |

---

## 🗂️ Software adicional (monitoramento e gerenciamento)

| Software         | Função                                           |
|------------------|--------------------------------------------------|
| Zabbix           | Monitoramento de servidores, rede e serviços     |
| NetBox / phpIPAM | Inventário de IPs, equipamentos, racks, etc.     |
| Grafana          | Dashboards para dados e métricas                 |
| pfSense          | Firewall e roteamento avançado (com GUI)         |
| WireGuard/OpenVPN| VPN segura entre sites e usuários remotos        |

---

## ✅ Dica para laboratórios caseiros:

Você pode montar todo um ambiente de rede usando apenas:
- 1 notebook com Windows + VirtualBox
- MobaXterm para acesso remoto
- Ubuntu Server como VM principal
- Switch virtual (modo Bridge ou Host-Only)
- GNS3 para testar cenários mais avançados com roteadores/switches simulados

---

## Próximos arquivos sugeridos:

- `/docs/checklist-implantacao.md` — checklist completo para preparar e validar o ambiente
- `/docs/topologia-logica.png` — imagem da topologia de rede com IPs, VLANs e serviços

---
