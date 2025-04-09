# Projeto: Monitoramento de Infraestrutura com Zabbix  
**/projetos/projeto-monitoramento/README.md**

Este projeto implementa uma solução de monitoramento de servidores, redes e serviços utilizando o **Zabbix**, uma das plataformas open-source mais completas do mercado.

---

# Project: Infrastructure Monitoring with Zabbix  
**/projetos/projeto-monitoramento/README.md**

This project implements a full-featured open-source monitoring solution using **Zabbix** to track servers, services, and network health.

---

## 🎯 Objetivo / Objective

- Monitorar o desempenho e a disponibilidade da infraestrutura de rede
- Gerar alertas e dashboards em tempo real
- Registrar histórico de uso de CPU, memória, disco, conectividade, etc.

---

## ⚙️ Componentes do Projeto / Project Components

| Componente         | Função                                  |
|--------------------|------------------------------------------|
| `Zabbix Server`    | Central de monitoramento e alertas       |
| `Zabbix Agent`     | Instalado nos hosts monitorados          |
| `MySQL/MariaDB`    | Banco de dados dos dados coletados       |
| `Apache` + `PHP`   | Interface web de visualização            |
| `SNMP` (opcional)  | Coleta de dados de switches e APs        |

---

## 🧱 Infraestrutura Simulada / Simulated Infrastructure

[ Hosts monitorados ] | | | [ubuntu-lab] [vpn-server] [dns-server] | ( rede local ) | [Zabbix Server + Web GUI] | [ Painel via navegador ]

---

## 📁 Estrutura do Projeto / Project structure

```bash
projeto-monitoramento/
├── README.md
├── zabbix-server/
│   ├── install-zabbix.sh
│   └── nginx-vhost.conf (opcional)
├── zabbix-agent/
│   ├── install-agent.sh
│   └── zabbix_agent.conf
├── snmp/
│   └── snmpd.conf
└── docs/
    └── dashboard-exemplo.png
```

---

## 🚀 Instalação rápida do agente / Quick install Zabbix Agent

```bash
sudo apt update
sudo apt install zabbix-agent -y
sudo nano /etc/zabbix/zabbix_agent.conf
```
# Configure Server= e Hostname=
```bash
sudo systemctl enable zabbix-agent
sudo systemctl restart zabbix-agent
```

---

## 💡 O que pode ser monitorado

Item	Tipo de dado
CPU, RAM, Disco	Uso, capacidade, alertas de consumo
Serviços: SSH, HTTP, DNS	Disponibilidade, tempo de resposta
Rede (interface, ping)	Latência, tráfego, perda de pacotes
Eventos personalizados	Logs, arquivos, serviços críticos

---

## 🧪 Testes realizados / Tests performed

  Agente Zabbix comunicando com o servidor

  Coleta automática de dados de CPU/RAM
  
  Teste de perda de pacotes via ICMP

  Painel com gráficos e alertas visíveis

  Configuração de host template (Linux by Zabbix agent)

---

## ✅ Benefícios e práticas recomendadas

  Agentes configurados com hostname fixo

  Templates aplicados automaticamente

  Alertas por e-mail e Telegram (configurável)

  Dashboards personalizáveis com Grafana (opcional)

  ---

  Próximos passos sugeridos:

  Integração com SNMP (para switches e roteadores)

  Monitoramento externo (Zabbix Proxy em outra unidade)

  Coleta remota via VPN

  ---

## 📄 Licença / License

Este projeto está licenciado sob a [MIT License](LICENSE)

---
