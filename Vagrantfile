# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
    # The most common configuration options are documented and commented below.
    # For a complete reference, please see the online documentation at
    # https://docs.vagrantup.com.
  
    # Every Vagrant development environment requires a box. You can search for
    # boxes at https://vagrantcloud.com/search
    config.vm.hostname = "manager"
    config.vm.box = "debian/buster64"
    config.vm.box_url = "debian/buster64"
    config.vm.network "private_network", ip: "192.168.50.10"
    # apache
    config.vm.network "forwarded_port", host: "8080", guest: "80"
    # Jenkins web sever
    config.vm.network "forwarded_port", host: "8081", guest: "8080"
    config.vm.network "forwarded_port", host: "8082", guest: "8081"
    config.vm.provision "shell", path: "./scripts/install.sh"
    config.vm.synced_folder "my-shop", "/var/www/html", type: "nfs"
    config.vm.synced_folder "selenium", "/home/vagrant/selenium/", type: "nfs"
    config.vm.provision "docker"
    config.vm.provision "docker_compose"
  end