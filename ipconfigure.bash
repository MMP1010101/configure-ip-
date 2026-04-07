#!/bin/bash

echo "Configurando IP estática en enp1s0..."

sudo tee /etc/netplan/00-installer-config.yaml > /dev/null <<EOF
# This is the network config written by 'subiquity'
network:
  ethernets:
    enp1s0:
      dhcp4: false
      addresses:
        - 172.31.74.220/24
  version: 2
EOF

echo "Aplicando configuración..."
sudo netplan apply

echo "¡Listo! IP configurada: 172.31.74.220/24"
