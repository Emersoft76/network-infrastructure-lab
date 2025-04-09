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
