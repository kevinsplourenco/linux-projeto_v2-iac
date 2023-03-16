#!/bin/bash

echo "Ataulizando Sistema.........."

apt-get update
apt-get upgrade -y

echo "Instalando Programas......."

apt-get install apache2 -y
apt-get install unzip -y

echo "Movendo e Copiando Arquivos......"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
