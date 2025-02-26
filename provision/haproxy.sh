#!/bin/bash

# Actualizar paquetes e instalar HAProxy
sudo apt update -y
sudo apt install -y haproxy

# Copiar la configuración de HAProxy
sudo cp /vagrant/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg

# Habilitar y reiniciar HAProxy
sudo systemctl enable haproxy
sudo systemctl restart haproxy
