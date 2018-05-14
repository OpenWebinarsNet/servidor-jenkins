#!/usr/bin/env bash

# Instalacion y actualizacion
export DEBIAN_FRONTEND=noninteractive
APT_OPTS="--assume-yes --no-install-suggests"

echo "Actualizando..."
sudo apt-get update ${APT_OPTS}
sudo apt-get install ${APT_OPTS} wget
sudo apt-get upgrade ${APT_OPTS}

echo "Instalando Jenkins..."
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
sudo apt-get update ${APT_OPTS}
sudo apt-get install ${APT_OPTS} openjdk-8-jre
sudo apt-get install -y jenkins >/dev/null

echo "Instalando Docker.."
sudo sh /home/vagrant/data/get-docker.sh

echo "Moficando usuarios y grupos"
for USER in jenkins vagrant
do 
  sudo usermod -aG docker $USER
done