#!/bin/sh



sudo apt update

echo setando a versão do wsl
wsl --set-version Ubuntu 2

echo transportando as imagens do docker pro Ubuntu
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb"
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/docker-ce-cli_19.03.3~3-0~ubuntu-disco_amd64.deb"
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/docker-ce_19.03.3~3-0~ubuntu-disco_amd64.deb"
sudo dpkg -i "containerd.io_1.2.6-3_amd64.deb"
sudo dpkg -i "docker-ce-cli_19.03.3~3-0~ubuntu-disco_amd64.deb"
sudo dpkg -i "docker-ce_19.03.3~3-0~ubuntu-disco_amd64.deb"

echo imagens disponiveis
docker image ls

echo imagens que consigo rodar
docker ps --all



