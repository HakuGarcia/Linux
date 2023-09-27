!/bin/bash

#Atualizando Servidor
apt upgrade -y 
apt update

#Instalando Apache
apt install apache2 -y
apt install unzip -y 
apt install wget -y

#Baixando Arquivo GitHub
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

