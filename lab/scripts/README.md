# 🧪 Scripts de Laboratório – `/lab/scripts/`

Scripts para automação de tarefas de rede, segurança, monitoramento e infraestrutura em ambientes Linux, especialmente Ubuntu Server.

Scripts to automate network, security, monitoring, and infrastructure tasks on Linux environments, especially Ubuntu Server.

---

## 📂 Estrutura atual / Current structure

/lab/scripts/
├── configure_network.sh
├── configure_network.md
├── firewall.sh
├── firewall.md
├── dns_bind.sh
├── dns_bind.md
├── install_zabbix_agent.sh
├── install_zabbix_agent.md
├── openvpn_server.sh
├── openvpn_server.md
├── log_rotation_setup.sh
├── log_rotation_setup.md

---

## 📜 Lista de scripts / Script list

| Script                        | Descrição (PT-BR)                                      | Description (EN)                                 |
|------------------------------|--------------------------------------------------------|--------------------------------------------------|
| `configure_network.sh`       | Configura IP fixo e hostname                          | Sets static IP and hostname                      |
| `firewall.sh`                | Regras básicas de firewall com iptables              | Basic firewall rules using iptables              |
| `dns_bind.sh`                | Instala e configura servidor DNS Bind9               | Installs and configures Bind9 DNS server         |
| `install_zabbix_agent.sh`    | Instala o agente Zabbix                              | Installs the Zabbix monitoring agent             |
| `openvpn_server.sh`          | Prepara servidor OpenVPN com Easy-RSA                | Sets up OpenVPN server using Easy-RSA            |
| `log_rotation_setup.sh`      | Configura rotação de logs personalizados             | Sets custom log rotation using logrotate         |

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

