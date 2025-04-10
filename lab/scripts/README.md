# 🧪 Scripts de Laboratório – `/lab/scripts/`

Scripts para automação de tarefas de rede, segurança, monitoramento e infraestrutura em ambientes Linux, especialmente Ubuntu Server.

Scripts to automate network, security, monitoring, and infrastructure tasks on Linux environments, especially Ubuntu Server.

---

## 📁 Estrutura da pasta /lab/scripts/

- 📄 [`configure_network.sh`](./configure_network.sh) – Script de configuração de IP fixo e hostname  
- 📝 [`configure_network.md`](./configure_network.md) – Explicação técnica do script de rede  

- 📄 [`firewall.sh`](./firewall.sh) – Script de regras básicas de firewall com iptables  
- 📝 [`firewall.md`](./firewall.md) – Explicação técnica do script de firewall  

- 📄 [`dns_bind.sh`](./dns_bind.sh) – Script de instalação e configuração do servidor DNS Bind9  
- 📝 [`dns_bind.md`](./dns_bind.md) – Explicação técnica do script DNS  

- 📄 [`install_zabbix_agent.sh`](./install_zabbix_agent.sh) – Script para instalar e configurar o Zabbix Agent  
- 📝 [`install_zabbix_agent.md`](./install_zabbix_agent.md) – Explicação técnica do script do Zabbix  

- 📄 [`openvpn_server.sh`](./openvpn_server.sh) – Script para preparar um servidor OpenVPN com Easy-RSA  
- 📝 [`openvpn_server.md`](./openvpn_server.md) – Explicação técnica do script VPN  

- 📄 [`log_rotation_setup.sh`](./log_rotation_setup.sh) – Script de rotação de logs customizados  
- 📝 [`log_rotation_setup.md`](./log_rotation_setup.md) – Explicação técnica da rotação de logs

---

## 📜 Lista de scripts / Script list

| Script                        | Descrição (PT-BR)                                      | Documentation (.md)                       |
|------------------------------|--------------------------------------------------------|--------------------------------------------|
| `configure_network.sh`       | Configura IP fixo e hostname                          | [configure_network.md](./configure_network.md) |
| `firewall.sh`                | Regras básicas de firewall com iptables              | [firewall.md](./firewall.md)                   |
| `dns_bind.sh`                | Instala e configura servidor DNS Bind9               | [dns_bind.md](./dns_bind.md)                   |
| `install_zabbix_agent.sh`    | Instala o agente Zabbix                              | [install_zabbix_agent.md](./install_zabbix_agent.md) |
| `openvpn_server.sh`          | Prepara servidor OpenVPN com Easy-RSA                | [openvpn_server.md](./openvpn_server.md)       |
| `log_rotation_setup.sh`      | Configura rotação de logs personalizados             | [log_rotation_setup.md](./log_rotation_setup.md) |

---

## 📄 Documentação / Documentation

Todos os scripts possuem documentação explicativa bilíngue (.md) com:

    🛠️ Explicação técnica / Technical explanation

    🚀 Como executar / How to run

    ✅ Próximo passo sugerido / Suggested next step

---

All scripts include a bilingual .md file with:

    🛠️ Technical explanation

    🚀 How to run

    ✅ Suggested next step

---

## ✅ Requisitos / Requirements

    Ubuntu Server 20.04 ou superior

    Acesso root ou via sudo

    Ambiente de testes local ou virtualizado (VirtualBox, GNS3, VMware, etc.)

Ubuntu Server 20.04+
Root access or sudo
Local or virtual test environment (VirtualBox, GNS3, VMware, etc.)

---

🚀 Como executar / How to run
```bash
sudo chmod +x nome_do_script.sh
sudo ./nome_do_script.sh
```
Substitua nome_do_script.sh pelo script desejado.
Replace nome_do_script.sh with the script name you want to run.

---

## 📬 Contribuições / Contributions

Sinta-se à vontade para sugerir novos scripts, melhorias ou ajustes.
Feel free to suggest new scripts, improvements, or fixes.

---

## 📄 Licença / License

Este projeto está licenciado sob a [MIT License](https://github.com/Emersoft76/network-infrastructure-lab/blob/main/LICENSE).

This content is licensed under the [MIT License](https://github.com/Emersoft76/network-infrastructure-lab/blob/main/LICENSE).

