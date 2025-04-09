# Checklist de Implantação de Infraestrutura de Redes  
**/docs/checklist-implantacao.md**

Este checklist ajuda a planejar, implantar e validar todos os componentes críticos de uma infraestrutura de redes — desde o ambiente físico até a camada de serviços e monitoramento.

---

# Network Infrastructure Deployment Checklist  
**/docs/checklist-implantacao.md**

This checklist helps plan, deploy, and validate all critical components of a network infrastructure — from the physical environment to services and monitoring layers.

---

## ✅ 1. Estrutura física / Physical setup

- [ ] Sala técnica organizada e segura
- [ ] Racks montados e aterrados
- [ ] Patch panels instalados e identificados
- [ ] Cabeamento estruturado (Cat6 ou superior)
- [ ] Switches e roteadores configurados e energizados
- [ ] No-breaks testados e operacionais

---

## ✅ 2. Equipamentos ativos / Active devices

- [ ] Switch gerenciável configurado (VLANs, trunk, SNMP)
- [ ] Roteador/firewall (pfSense, Mikrotik, etc.) com NAT e regras básicas
- [ ] Access Points configurados com SSID e segurança
- [ ] Interfaces de rede testadas e com link ativo

---

## ✅ 3. Servidor base (Ubuntu Server)

- [ ] Ubuntu Server instalado e atualizado
- [ ] Acesso remoto via SSH (MobaXterm)
- [ ] Firewall básico configurado (`ufw` ou `iptables`)
- [ ] Hostname e timezone definidos
- [ ] Pacotes de rede instalados (`net-tools`, `iproute2`, etc.)

---

## ✅ 4. Serviços de rede

- [ ] DHCP server funcional (isc-dhcp-server)
- [ ] DNS interno (bind9) resolvendo nomes da rede local
- [ ] Compartilhamento de arquivos (Samba ou Nextcloud)
- [ ] VPN ativa (WireGuard ou OpenVPN)
- [ ] Backup automático configurado (rsync, cron, etc.)

---

## ✅ 5. Roteamento e segmentação

- [ ] Rotas estáticas e/ou dinâmicas configuradas corretamente
- [ ] Roteamento por políticas (PBR), se necessário
- [ ] VLANs criadas e funcionando
- [ ] Trunk entre switches funcionando

---

## ✅ 6. Monitoramento e segurança

- [ ] Zabbix Agent instalado e comunicando com o servidor
- [ ] Regras no firewall aplicadas e validadas
- [ ] Fail2ban configurado (proteção contra brute force)
- [ ] Snort ou Suricata instalado (IDS/IPS)
- [ ] Logs sendo gerados e armazenados corretamente

---

## ✅ 7. Documentação e organização

- [ ] Topologia de rede atualizada e documentada
- [ ] IPs e nomes organizados (ex: planilha ou NetBox)
- [ ] Scripts salvos e versionados no GitHub
- [ ] Backup da configuração dos switches/roteadores
- [ ] Manual de procedimentos técnicos disponível

---

## 🧪 Testes finais / Final tests

- [ ] Comunicação entre sub-redes
- [ ] Acesso externo à internet (via NAT)
- [ ] Conectividade Wi-Fi segura
- [ ] Acesso VPN funcional
- [ ] Dashboards de monitoramento exibindo dados

---

## 🧠 Recomendação final

> Este checklist pode ser usado como **plano de implantação**, **roteiro de auditoria interna** ou até como **documento de entrega técnica** em projetos de redes reais ou simulados.

---

## Próximo passo sugerido:
- Inserir o diagrama da topologia lógica: `/docs/topologia-logica.png`

---
