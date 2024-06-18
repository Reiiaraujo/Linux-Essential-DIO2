#!/bin/bash

echo "####################";
echo "Iniciando instalação...";
echo "####################";

apt update -y; 

echo "####################";
echo "instalando apahce Web Service...";
echo "####################";

apt install apache2 -y;

echo "####################";
echo "Instalando Unzip...";
echo "####################";

apt install unzip -y ; 
apt install git -y;

echo "####################";
echo "Baixando Aplicação...";
echo "####################";
rm /var/www/html/*
cd /tmp;
git clone https://github.com/denilsonbonatti/linux-site-dio.git;
cd /tmp/linux-site-dio;
cp -r * /var/www/html/;


echo "####################";
echo "Ativando serviço Web .";
echo "####################";

systemctl enable apache2;
systemctl restart apache2;

echo "####################";
echo "Script finalizando...";
echo "####################";

#"By: Reinaldo Araujo"