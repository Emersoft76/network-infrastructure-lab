# 🖧 configure_network.sh – Explicação Técnica  
**Script de configuração de rede e hostname em Ubuntu Server**

---

## 📝 Explicação técnica / Technical explanation

Este script define um IP estático e hostname em um ambiente Ubuntu Server utilizando `netplan` (padrão a partir da versão 18.04+).

---

## 🔧 Componentes aplicados

- `hostnamectl` para mudar o nome do host
- Arquivo `/etc/netplan/00-static.yaml` com:
  - IP fixo: `192.168.50.10/24`
  - Gateway: `192.168.50.1`
  - DNS: interno + externo

---

## 🚀 Como executar / How to run

```bash
sudo ./configure_network.sh
```

---

💡 Ideal para laboratórios em VirtualBox, GNS3 ou ambientes corporativos isolados.
