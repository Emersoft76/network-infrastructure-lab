# 🛡️ firewall.sh – Explicação Técnica  
**Configuração automatizada de firewall com iptables**

---

## 📝 Explicação técnica / Technical explanation

Este script aplica regras básicas de firewall com iptables, bloqueando conexões indesejadas e permitindo somente tráfego essencial, como SSH, OpenVPN e ICMP.

---

## 🔐 Política padrão / Default policy

```bash
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
```

Entrada e encaminhamento bloqueados por padrão

Saída permitida para que o sistema possa se comunicar externamente

---

## ✅ Regras permitidas / Allowed rules

| Regra (iptables)                                | Função / Purpose                                 |
|--------------------------------------------------|--------------------------------------------------|
| `-i lo -j ACCEPT`                                | Permite tráfego local (loopback interface)       |
| `-m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT` | Permite conexões já estabelecidas ou relacionadas |
| `-p tcp --dport 22 -j ACCEPT`                    | Libera acesso remoto via SSH (porta 22)          |
| `-p udp --dport 1194 -j ACCEPT`                  | Libera conexões de VPN OpenVPN (porta 1194/UDP)  |
| `-p icmp -j ACCEPT`                              | Libera ICMP (ping, Echo Request)                 |

---

##💾 Persistência / Persistence
```bash
sudo apt install iptables-persistent
sudo netfilter-persistent save
```

---

## 🚀 Como executar / How to run
```bash
sudo chmod +x firewall.sh
sudo ./firewall.sh
```

---

💡 Ideal para servidores Linux baseados em Ubuntu ou Debian.

---

---

## ✅ Próximo passo sugerido / Suggested next step

- [openvpn_server.md](./openvpn_server.md): Estabeleça uma conexão VPN segura após configurar o firewall.
