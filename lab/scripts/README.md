# 📂 Scripts de Laboratório – `lab/scripts/`  
**Scripts úteis para automação da configuração de rede e segurança em Ubuntu Server**

---

## 📜 Lista de scripts

| Script                   | Descrição                                                |
|--------------------------|----------------------------------------------------------|
| `firewall.sh`            | Aplica regras básicas de firewall com iptables           |
| `configure_network.sh`   | Define IP estático e hostname com netplan                |

---

## 📄 Documentações associadas

| Documento                | Relacionado ao script                                     |
|--------------------------|----------------------------------------------------------|
| `firewall.md`            | Explicação técnica do script de firewall                 |
| `configure_network.md`   | Explicação técnica da configuração de rede               |

---

## 💡 Requisitos

- Sistema: Ubuntu Server 20.04 ou superior
- Permissões: executar como `sudo`
- Persistência opcional via: `iptables-persistent`

---

## ✅ Como usar

```bash
sudo chmod +x firewall.sh
sudo ./firewall.sh

sudo chmod +x configure_network.sh
sudo ./configure_network.sh
```

---

Todos os scripts foram testados em ambientes de laboratório com VirtualBox + Ubuntu Server.
