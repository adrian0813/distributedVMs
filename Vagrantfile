# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: "sudo apt-get update"
  
  config.vm.define "web" do |web|
    web.vm.network "forwarded_port", guest: 8080, host: 8080
    web.vm.network "private_network", ip: "192.168.11.11"

    web.vm.provision "shell", path: "provision-tomcat.sh"

    web.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end
  
  config.vm.define "db" do |db|
    db.vm.network "forwarded_port", guest: 5432, host:4396
    db.vm.network "private_network", ip: "192.168.11.12"
  end    

  config.vm.define "python27" do |python27|
    python27.vm.network "private_network", ip: "192.168.11.13"
#    python27.vm.provision "shell", inline: "sudo apt-get install python -y"
  end

end
