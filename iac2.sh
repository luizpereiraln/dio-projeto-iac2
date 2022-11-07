#! /bin/bash

echo "Atualização do sistema!"

apt-get update -y
apt-get upgrade -y

echo "Instalações Necessárias!"
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Efetuando o download de arquivos da aplicação!"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação para o servidor apache!"
cd linux-site-dio-main
cp -R * /var/www/html/




