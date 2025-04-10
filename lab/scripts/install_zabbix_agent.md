# 📈 install_zabbix_agent.sh – Instalação do Agente Zabbix / Zabbix Agent Setup

---

## 📝 Explicação técnica / Technical explanation

Este script instala e configura o **Zabbix Agent** em servidores Ubuntu, ajustando automaticamente o endereço do servidor Zabbix, a ativação do agente e o nome do host local.

This script installs and configures the **Zabbix Agent** on Ubuntu servers, automatically setting the Zabbix Server address, activating the agent, and setting the local hostname.

---

## ⚙️ O que o script faz / What the script does

| Etapa / Step                                | Descrição / Description                                    |
|---------------------------------------------|-------------------------------------------------------------|
| Atualiza os pacotes                         | `apt update`                                                |
| Instala o Zabbix Agent                      | `apt install zabbix-agent`                                  |
| Define o IP do servidor Zabbix              | Edita o arquivo `/etc/zabbix/zabbix_agentd.conf`            |
| Define o nome do host (hostname)            | Usa o nome atual da máquina                                 |
| Reinicia e habilita o serviço               | `systemctl restart && enable zabbix-agent`                  |

---

## 📦 Requisitos / Requirements

- Ubuntu Server 20.04 ou superior
- IP do Zabbix Server definido no script (`ZBX_SERVER`)

---

## 🚀 Como executar / How to run

```bash
sudo chmod +x install_zabbix_agent.sh
sudo ./install_zabbix_agent.sh
```
---

##🛠️ Personalização / Customization

Para ajustar o IP do servidor Zabbix, edite esta linha no script:
```bash
ZBX_SERVER="192.168.50.100"
```
---

## 🔍 Verificação / Verification

Após a execução, você pode verificar o status com:
```bash
sudo systemctl status zabbix-agent
```
E testar a conectividade entre o host monitorado e o servidor Zabbix com:
```bash
telnet 192.168.50.100 10051
```
## 💡 A porta padrão do Zabbix Server é 10051.

---

📚 Referência / Reference

    Site oficial: https://www.zabbix.com

    Documentação: https://www.zabbix.com/documentation
