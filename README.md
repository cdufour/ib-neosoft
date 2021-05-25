# Installation de Docker sur Ubuntu

[Procédure sur docker.com](https://docs.docker.com/engine/install/ubuntu/)

- _Mise à jour apt_  
sudo apt update

- _Installation de paquets utiles_  
sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release

- _Ajout de la clé GPG officielle de Docker_  
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

- _Ajout du dépôt stable aux sources_  
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

- _Mise à jour apt_  
sudo apt update

- _Installation des paquets Docker_  
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

- _Ajout de l'utilisateur courant au groupe docker_  
sudo usermod -aG docker $USER

- _Installation de docker-compose_  
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose