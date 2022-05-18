# Serveur Apache avec docker

## Création de l'image

Lancer à la racine du projet :

*docker build -t my-apache-img .*

## Lancement du container à partir de l'image créée

*docker run -t -d -p 8080:80 -v /home/ubuntu/Workspace/docker-apache/shared:/var/www/html --name my-server my-apache-img*

## Accès au serveur

Grâce à la redirection de port, on peut accéder au serveur depuis : *localhost:8080*