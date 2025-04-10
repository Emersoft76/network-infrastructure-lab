# 🔐 openvpn_server.sh – OpenVPN Server

---

## 📝 Explicação técnica / Technical explanation

Instala OpenVPN e gera certificados usando Easy-RSA.

Installs OpenVPN and generates certificates with Easy-RSA.

---

## 🚀 Como executar / How to run

```bash
sudo chmod +x openvpn_server.sh
sudo ./openvpn_server.sh
```
Depois, edite /etc/openvpn/server.conf e inicie o serviço com:
```bash
sudo systemctl start openvpn@server
sudo systemctl enable openvpn@server
```
