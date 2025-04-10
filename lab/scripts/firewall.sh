
---

### 🔥 `firewall.sh`

```bash
#!/bin/bash

# Script básico de firewall com iptables

# Política padrão
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Permitir loopback
iptables -A INPUT -i lo -j ACCEPT

# Permitir conexões já estabelecidas
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Permitir SSH (porta 22)
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Permitir OpenVPN (porta UDP 1194)
iptables -A INPUT -p udp --dport 1194 -j ACCEPT

# Permitir ping
iptables -A INPUT -p icmp -j ACCEPT

echo "Firewall aplicado com sucesso!"
