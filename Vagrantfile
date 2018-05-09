# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "jenkins.local"
  config.vm.network "private_network", ip: "192.168.50.5"

  config.vm.synced_folder "./data", "/home/vagrant/data"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", path: "data/provision.sh"

end
