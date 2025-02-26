#!/bin/bash

# Actualizar paquetes e instalar Node.js
sudo apt update -y
sudo apt install -y nodejs npm

# Crear la carpeta de la aplicación
mkdir -p /home/vagrant/app
cp /vagrant/web/app.js /home/vagrant/app/app.js
cp /vagrant/web/package.json /home/vagrant/app/package.json
cp /vagrant/web/error.html /home/vagrant/app/error.html

# Instalar dependencias y ejecutar la app
cd /home/vagrant/app
npm install
nohup node app.js > output.log 2>&1 &
