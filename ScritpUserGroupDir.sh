#!/bin/bash

#Criar diretorios /publico /adm /ven /sec permitir os grupos corelacionados com permissao total

#criar grupos GRP_ADM GRP_VEN GRP_SEC
#criar e atrelar usuario aos grupos
#carlos, maria, joao -> GRP_ADM
#debora,sebastiana,roberto -> GRP_VEN
#jsoefina, amanda, rogerio -> GRP_SEC

#criar pastas
echo "criando Pastas.";

mkdir /publico /adm /ven /sec;

echo "Criando Grupos";

groupadd GRP_ADM;
groupadd GRP_VEN;
groupadd GRP_SEC;

#criando usuarios
echo "Adicionando usuarios, senha padrão Senha123"

useradd carlos -m -s /bin/bash -c "Carlos" -p $(openssl passwd "Senha123") -G GRP_ADM;
useradd maria -m --shell /bin/bash -c "Maria" -p $(openssl passwd "Senha123") -G GRP_ADM;
useradd joao -m --shell /bin/bash -c "Joao" -p $(openssl passwd "Senha123") -G GRP_ADM;
useradd debora -m --shell /bin/bash -c "Debora" -p $(openssl passwd "Senha123") -G GRP_VEN;
useradd sebastiana -m --shell /bin/bash -c "Sebastiana" -p $(openssl passwd "Senha123") -G GRP_VEN;
useradd roberto -m --shell /bin/bash -c "Roberto" -p $(openssl passwd "Senha123") -G GRP_VEN;
useradd josefina -m --shell /bin/bash -c "josefina" -p $(openssl passwd "Senha123") -G GRP_SEC;
useradd amanda -m --shell /bin/bash -c "amanda" -p $(openssl passwd "Senha123") -G GRP_SEC;
useradd rogerio -m --shell /bin/bash -c "rogerio" -p $(openssl passwd "Senha123") -G GRP_SEC;
#alternado permissões das pastas.
echo "Editando permissões"
chmod -R 777 /publico;
chmod -R 770 /adm;
chmod -R 770 /ven;
chmod -R 770 /sec;
chown -R root:GRP_ADM /adm;
chown -R root:GRP_VEN /ven;
chown -R root:GRP_SEC /sec;
echo "Script finalizado com sucesso!";