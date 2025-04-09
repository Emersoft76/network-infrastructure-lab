# Instalação do Ubuntu Server em Máquina Virtual (VM)
**/lab/instalar-ubuntu-vm.md**

Este guia fornece o passo a passo completo para criar e configurar uma VM com o Ubuntu Server, utilizando o VirtualBox, como base para um ambiente de redes e infraestrutura de laboratório.

---

# Installing Ubuntu Server on a Virtual Machine (VM)
**/lab/instalar-ubuntu-vm.md**

This guide provides a complete step-by-step process for creating and configuring an Ubuntu Server VM using VirtualBox, as the base of a full lab for network and infrastructure administration.

---

## Pré-requisitos / Prerequisites

| Requisito                      | Ferramenta / Versão Recomendada              |
|-------------------------------|----------------------------------------------|
| Sistema operacional base      | Windows 10 ou superior                       |
| Virtualizador                 | VirtualBox (última versão)                   |
| Pacote de extensão            | VirtualBox Extension Pack                    |
| Imagem ISO                    | Ubuntu Server 22.04 LTS (64 bits)            |
| Gerenciador SSH para acesso   | MobaXterm (portable ou installer edition)    |

---

## 1. Baixar as ferramentas / Download the tools

### Ubuntu Server ISO:
[https://ubuntu.com/download/server](https://ubuntu.com/download/server)

### VirtualBox + Extension Pack:
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

### MobaXterm (Windows):
[https://mobaxterm.mobatek.net/](https://mobaxterm.mobatek.net/)

---

## 2. Criar uma nova VM no VirtualBox / Create a new VM

1. Abra o VirtualBox e clique em `New`
2. Use o modo **Expert Mode**
3. Preencha os dados:

| Campo              | Valor sugerido            |
|--------------------|---------------------------|
| Name               | ubuntu-server-lab         |
| Type               | Linux                     |
| Version            | Ubuntu (64-bit)           |
| Memory Size        | 2048–4096 MB              |
| Hard Disk          | Criar um novo disco VDI   |
| Tamanho do Disco   | 30 GB (dinamicamente alocado) |

---

## 3. Configurar a VM / VM Settings

- **System > Processor**: 2 CPUs (ou mais, se disponível)
- **Display > Video Memory**: 16 MB
- **Storage > IDE Controller**:
  - Clique em “Empty”
  - Selecione a ISO do Ubuntu Server
- **Network > Adapter 1**:
  - Selecione: `Bridged Adapter` (acesso total à rede)

---

## 4. Iniciar a instalação / Begin installation

1. Inicie a VM
2. Escolha o idioma (`Português` ou `English`)
3. Layout do teclado (BR ABNT2 ou US)
4. Configuração de rede:
   - Aceite DHCP automático
   - Ignore proxy
5. Particionamento:
   - Usar disco inteiro com LVM (sem criptografia)
6. Criar usuário:

| Campo           | Exemplo              |
|-----------------|----------------------|
| Nome completo   | João Silva           |
| Nome do servidor| ubuntu-lab           |
| Nome de usuário | admin                |
| Senha           | admin123             |

7. Marque para instalar o **OpenSSH Server**
8. Ignore os pacotes Snap sugeridos (desmarque tudo)
9. Continue até concluir

---

## 5. Finalizar instalação / Finish installation

- Ao final, reinicie a VM
- Remova a ISO virtual (se necessário)
- Faça login com seu usuário e senha

---

## 6. Primeiros comandos pós-instalação / First post-install commands

```bash
# Atualizar o sistema
sudo apt update && sudo apt upgrade -y

# Verificar o IP da máquina
ip a

# Instalar pacotes básicos
sudo apt install net-tools iproute2 iputils-ping traceroute curl wget git vim htop unzip -y
```

---

## 7. Acesso remoto com MobaXterm / Remote access via MobaXterm

  Abra o MobaXterm no seu Windows

  Clique em Session > SSH

  Insira o IP da VM e o usuário (admin)

  Conecte-se e comece a gerenciar remotamente

  ---

  ## ✅ Pronto! Seu servidor Ubuntu está preparado para os próximos módulos:

    Configuração de firewall

    Instalação de serviços de rede

    Roteamento avançado

    Monitoramento

    VPN e segurança
