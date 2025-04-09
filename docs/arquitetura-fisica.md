# Arquitetura Física de Redes – Estrutura Profissional  
**/docs/arquitetura-fisica.md**

Este documento descreve os principais elementos físicos que compõem uma infraestrutura de redes corporativa eficiente, segura e escalável — desde a sala técnica e equipamentos até o cabeamento estruturado e organização dos ativos.

---

# Physical Network Architecture – Professional Structure  
**/docs/arquitetura-fisica.md**

This document describes the main physical components of a reliable, secure, and scalable corporate network infrastructure — from the technical room and hardware to structured cabling and asset organization.

---

## 🧱 Elementos da Camada Física / Physical Layer Elements

### 1. **Racks e organizadores / Server racks and organizers**
- Racks 19" padrão para abrigar switches, patch panels e servidores
- Organizador de cabos horizontal e vertical
- Ventilação (coolers e exaustores)

### 2. **Cabeamento estruturado / Structured cabling**
- Cabos Cat6 ou superior (Cat6A, Cat7)
- Patch panels de 24 ou 48 portas
- Patch cords padronizados (curtos, com etiquetas)
- Fibra óptica (backbone entre andares ou salas)

### 3. **Switches e roteadores / Switches and routers**
- Switches gerenciáveis (Layer 2 ou 3)
  - Suporte a VLAN, SNMP, trunking, QoS
- Roteador de borda (ex: pfSense, Mikrotik, Cisco)
- Equipamentos empilháveis ou montáveis em rack

### 4. **Servidores físicos (ou VMs)**  
- Servidor principal com redundância:
  - 2 fontes de alimentação
  - 2 interfaces de rede (bonding/failover)
  - RAID 1 ou RAID 10 (discos)
- Alternativamente: ambiente virtualizado com Proxmox, VMware ou VirtualBox para laboratório

### 5. **No-break (UPS) e energia / Power**
- No-break dimensionado para 30 a 60 minutos
- Filtro de linha + aterramento
- Distribuição elétrica separada da rede de TI

---

## 🔐 Segurança física / Physical security

- Sala técnica trancada
- Monitoramento por câmeras (CFTV)
- Controle de acesso físico (biometria, cartão, chave)
- Proteção contra incêndio (detecção e supressão)

---

## 🧰 Ferramentas e organização / Tools and organization

| Item                          | Finalidade                                      |
|-------------------------------|-------------------------------------------------|
| Testador de cabos             | Verificar conectividade e padrão de pinagem    |
| Etiquetadora                  | Organização de cabos, patch panels, racks      |
| Diagrama de rede              | Documentação visual para manutenção e auditoria|
| Inventário de ativos (Excel ou NetBox) | Gestão dos equipamentos, IPs e portas |

---

## 📌 Considerações para ambientes de laboratório / Notes for lab environments

Mesmo em ambientes simulados, é recomendável seguir padrões físicos:

- Manter um diagrama de topologia simples
- Nomear interfaces, hosts e serviços de forma coerente
- Organizar arquivos, scripts e imagens com clareza
- Usar switches virtuais (GNS3, VirtualBox Host-only, etc.)

---

## ✅ Próximos arquivos recomendados:

- `equipamentos-recomendados.md` — Lista e descrição de equipamentos físicos e virtuais úteis
- `topologia-logica.png` — Imagem visual da rede com IPs, VLANs, sub-redes e serviços

---

## Licença / License
Este material está licenciado sob a [MIT License](../LICENSE)

---
