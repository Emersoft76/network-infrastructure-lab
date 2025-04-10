#!/bin/bash

# Configuração de logrotate para log personalizado

cat <<EOF | sudo tee /etc/logrotate.d/custom-log
/var/log/custom-app.log {
    daily
    missingok
    rotate 7
    compress
    delaycompress
    notifempty
    create 0640 root adm
}
EOF

sudo logrotate /etc/logrotate.d/custom-log --debug

echo "Rotação de logs configurada!"
