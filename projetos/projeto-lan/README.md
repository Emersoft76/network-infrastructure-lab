# Projeto: LAN Corporativa com Segmentação de Rede  
**/projetos/projeto-lan/README.md**

Este projeto simula a implantação de uma rede local corporativa (LAN), com múltiplos segmentos de rede (VLANs), serviços essenciais de infraestrutura, e um servidor Ubuntu centralizado.

---

# Project: Corporate LAN with Network Segmentation  
**/projetos/projeto-lan/README.md**

This project simulates the deployment of a corporate Local Area Network (LAN), with multiple network segments (VLANs), essential infrastructure services, and a centralized Ubuntu server.

---

## 🎯 Objetivo / Objective

- Criar uma LAN segmentada com VLANs (administração, usuários, servidores)
- Implementar serviços de DHCP, DNS, Samba, OpenSSH
- Utilizar um Ubuntu Server como controlador central da rede
- Organizar topologia e IPs de forma escalável

---

## 🧱 Infraestrutura Simulada / Simulated Infrastructure

[ Internet ] | [ pfSense / Roteador Linux ] | [ Switch Gerenciável ] ← VLAN trunk | +-----------------------------+ | VLAN 10: Administração | 192.168.10.0/24 | VLAN 20: Usuários | 192.168.20.0/24 | VLAN 30: Servidores | 192.168.30.0/24 +-----------------------------+ | [ Ubuntu Server principal ]


---

## ⚙️ Serviços implementados / Services implemented

| Serviço         | Ferramenta             | Descrição                                     |
|-----------------|------------------------|-----------------------------------------------|
| DHCP            | `isc-dhcp-server`      | Entrega IPs dinamicamente por VLAN            |
| DNS interno     | `bind9`                | Resolução de nomes internos e externos        |
| Compartilhamento| `samba`                | Compartilhamento de arquivos em rede          |
| SSH             | `openssh-server`       | Acesso remoto seguro                          |
| Firewall local  | `ufw` / `iptables`     | Regras por VLAN e serviço                     |

---

## 🧪 Testes realizados / Tests performed

- [x] Dispositivos nas VLANs se comunicam entre si conforme regras
- [x] Acesso remoto via SSH de qualquer VLAN
- [x] Atribuição de IPs correta por VLAN via DHCP
- [x] Resolução DNS funcional internamente
- [x] Compartilhamento de arquivos acessível via rede

---

## 📁 Estrutura do projeto / Project structure

```bash
projeto-lan/
├── README.md
├── dhcp/
│   └── dhcpd.conf
├── dns/
│   └── named.conf.local
├── samba/
│   └── smb.conf
├── vlan/
│   └── vlan-config.md
├── firewall/
│   └── regras-ufw.sh
└── docs/
    └── topologia-textual.md
```

💡 Dicas de uso / Usage tips

    Utilize o modo Bridge no VirtualBox para integrar as VLANs reais/virtuais

    No GNS3, você pode simular switches com VLANs e roteamento interno

    Teste com clientes Linux e Windows para validar DHCP/Samba

---

 ✅ Próximos projetos sugeridos:

    projeto-vpn/ — Conexão remota segura entre unidades e usuários

    projeto-monitoramento/ — Monitoramento de serviços e hosts com Zabbix   
