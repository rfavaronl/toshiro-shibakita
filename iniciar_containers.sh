#!/bin/bash

#Instalar docker
sudo apt update
sudo apt install docker.io -y

#Iniciar containers mysql e php-apache
docker run --name mysql -e MYSQL_ROOT_PASSWORD=Senha123 -dt mysql
docker run --name webserver -dt -p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:alpine-php7
