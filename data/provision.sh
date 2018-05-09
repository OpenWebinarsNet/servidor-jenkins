#!/usr/bin/env bash

sudo apt update -y && \
sudo apt install -y openjdk-8-jre daemon && \
sudo dpkg -i /home/vagrant/data/jenkins_2.107.3_all.deb && \
sudo sh /home/vagrant/data/get-docker.sh 

for USER in jenkins vagrant;
do 
  sudo usermod -aG docker $USER
done
