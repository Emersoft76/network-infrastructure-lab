# Configurações Iniciais do Ubuntu Server  
**/lab/configuracoes-iniciais.md**

Este guia apresenta os passos básicos recomendados após instalar o Ubuntu Server, preparando o ambiente para um laboratório de redes seguro, funcional e bem estruturado.

---

# Ubuntu Server Initial Configuration  
**/lab/configuracoes-iniciais.md**

This guide covers the essential post-installation steps to prepare your Ubuntu Server for a secure and structured network lab environment.

---

## ✅ 1. Atualizar pacotes / Update system packages

```bash
sudo apt update && sudo apt upgrade -y
```
Garante que o sistema esteja com os pacotes mais recentes.

---

## ✅ 2. Configurar fuso horário / Set time zone

```bash
sudo timedatectl set-timezone Europe/Lisbon
timedatectl status
```
Substitua Europe/Lisbon se estiver em outra região.
Use timedatectl list-timezones para consultar outros fusos.

---
## ✅ 3. Configurar hostname (opcional) / Set hostname

```bash
sudo hostnamectl set-hostname ubuntu-lab
```
Torna mais fácil identificar o servidor em ambientes com múltiplas VMs.

---

## ✅ 4. Ativar e configurar o UFW (firewall)

```bash
sudo apt install ufw -y
```
# Permitir acesso via SSH
```bash
sudo ufw allow ssh
```
# Ativar o firewall
```bash
sudo ufw enable
```
# Verificar status
```bash
sudo ufw status verbose
```
Protege a máquina contra acessos não autorizados, mantendo o acesso remoto funcional.

---

## ✅ 5. Criar novos usuários (opcional) / Create new users
```bash
sudo adduser redes
sudo usermod -aG sudo redes
```
Cria um novo usuário chamado redes com privilégios de administrador.

## ✅ 6. Instalar pacotes de rede essenciais
```bash
sudo apt install net-tools iproute2 iputils-ping traceroute curl wget vim htop unzip dnsutils nmap tcpdump -y
```
Ferramentas úteis para diagnóstico e administração de redes.

---

## ✅ 7. Habilitar login root via SSH (opcional e não recomendado)
```bash
sudo nano /etc/ssh/sshd_config
```

---

Altere (se necessário):

PermitRootLogin yes
PasswordAuthentication yes

---

Depois:
```bash
sudo systemctl restart ssh
```
⚠️ Apenas para testes. Em produção, recomenda-se usar chave SSH + desabilitar root.

---

## ✅ 8. Comandos úteis de diagnóstico / Useful diagnostic commands
```bash
ip a                # Ver IPs
ip r                # Ver rotas
ping 8.8.8.8        # Testar conectividade
traceroute google.com  # Ver caminho de rede
ss -tulnp           # Ver portas e serviços abertos
```

---

Próximos passos / Next steps

  Configuração de firewall avançado (iptables, pfSense)
  
  Instalação de serviços de rede (DHCP, DNS, etc.)

  Roteamento por políticas (PBR)

  Configuração de monitoramento com Zabbix



