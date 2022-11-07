# vi script-iac2.sh

#!/bin/bash

echo '### Atualizando o servidor...'
apt-get update
apt-get upgrade -y

echo ''
echo '### Instalando o Apache...'
apt-get install apache2 -y
apt-get install unzip -y

echo ''
echo '### Baixando e copiando os arquivos da aplicação...'
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip -d /tmp
cp -R /tmp/linux-site-dio-main/* /var/www/html
