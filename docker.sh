!/bin/bash

#Instalação
apt install mysql-server -y
apt install apache2 -y

#MySQL
create table Dados (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar(50),
    Cidade varchar(50),
    Host varchar(50)
);

Select * FROM Dados

#php
wget https://github.com/denilsonbonatti/toshiro-shibakita/archive/refs/heads/main.zip
unzip main.zip

cd toshiro-shibakita-main
ls
cd toshiro-shibakita-main
ls

docker run --name toserver -dt -p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:apline-php7