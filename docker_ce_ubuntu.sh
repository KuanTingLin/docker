#!/bin/bash

sudo apt-get remove docker docker-engine -y
sudo apt-get remove docker.io -y
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
sudo apt-get update -y
sudo apt-get install docker-ce -y
sudo groupadd docker 
sudo usermod -aG docker $USER
sudo systemctl enable docker 
sudo docker --version
