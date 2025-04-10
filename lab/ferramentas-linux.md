# Ferramentas Essenciais no Ubuntu Server para Redes  
**/lab/ferramentas-linux.md**

Este documento apresenta uma lista organizada das principais ferramentas utilizadas na administração e diagnóstico de redes em ambientes Linux (Ubuntu Server), com instruções de instalação e explicações práticas.

---

# Essential Tools for Network Administration on Ubuntu Server  
**/lab/ferramentas-linux.md**

This document provides a structured list of the most used tools for Linux-based network management and diagnostics, including installation instructions and usage examples.

---

## ✅ Instalação rápida de todas as ferramentas / Quick install

```bash
sudo apt update && sudo apt install net-tools iproute2 iputils-ping traceroute curl wget dnsutils nmap tcpdump mtr htop iftop ethtool whois arping unzip -y
```

---

## 📦 Lista de Ferramentas / Tool List

| Ferramenta        | Função                                                | Instalação                     |
|-------------------|--------------------------------------------------------|--------------------------------|
| `net-tools`       | Inclui `ifconfig`, `netstat` (ferramentas antigas)     | `sudo apt install net-tools`  |
| `iproute2`        | Ferramentas modernas: `ip a`, `ip r`, `ip link`        | Incluso no Ubuntu              |
| `iputils-ping`    | Comando `ping` padrão do sistema                       | Incluso                        |
| `traceroute`      | Rastreia rotas de pacotes na rede                      | `sudo apt install traceroute` |
| `curl`, `wget`    | Baixar arquivos, testar URLs e conexões HTTP/HTTPS     | `sudo apt install curl wget`  |
| `dnsutils`        | Inclui `dig` e `nslookup` para testes DNS              | `sudo apt install dnsutils`   |
| `nmap`            | Scanner de rede e portas                               | `sudo apt install nmap`       |
| `tcpdump`         | Sniffer de pacotes via terminal                        | `sudo apt install tcpdump`    |
| `mtr`             | Combinação de `ping` + `traceroute` interativo         | `sudo apt install mtr`        |
| `htop`            | Monitor de recursos (processos, memória, CPU)          | `sudo apt install htop`       |
| `iftop`           | Monitoramento de tráfego em tempo real por interface   | `sudo apt install iftop`      |
| `ethtool`         | Ver e configurar propriedades de interfaces de rede    | `sudo apt install ethtool`    |
| `arping`          | Envia pings ARP (camada 2)                             | `sudo apt install arping`     |
| `unzip`           | Descompactar arquivos `.zip`                           | `sudo apt install unzip`      |
| `whois`           | Consulta de registros de domínios                      | `sudo apt install whois`      |

---

## 🧠 Exemplos práticos / Usage examples
Ver interfaces e IPs

```bash
ip a
ifconfig
```
Ver rotas
```bash
ip r
netstat -rn
```
Testar conexão com IP ou domínio
```bash
ping 8.8.8.8
ping google.com
```
Rastrear rota até um destino
```bash
traceroute google.com
mtr google.com
```
Escanear portas de um host
```bash
nmap 192.168.0.1
```
Capturar pacotes da rede
```bash
sudo tcpdump -i enp0s3
```
Ver tráfego por interface
```bash
sudo iftop
```
Consultar DNS
```bash
dig google.com
nslookup google.com
```

---

## ✅ Próximos passos / Next steps

  Aplicar as ferramentas em diagnósticos reais

  Utilizar nos projetos simulados em /projetos/

  Integrar ferramentas ao monitoramento via Zabbix ou Grafana
