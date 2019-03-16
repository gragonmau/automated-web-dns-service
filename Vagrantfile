# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # AWDS server
  config.vm.define "dns" do |dns| 
    
    config.vm.provider "virtualbox" do |v|
      v.name = "dns"
      v.memory = 512
      v.cpus = 1
    end

    dns.vm.box = "debian/jessie64"
    dns.vm.network "private_network", ip: "192.168.50.2"
    config.vm.hostname = "awds.com"

  end

  # Web server number 1
  config.vm.define "web1" do |web1| 
    
    config.vm.provider "virtualbox" do |v|
      v.name = "web1"
      v.memory = 512
      v.cpus = 1
    end
    
    web1.vm.box = "debian/jessie64"
    web1.vm.network "private_network", ip: "192.168.50.3"

  end

  # Web server number 2
  config.vm.define "web2" do |web2|

    config.vm.provider "virtualbox" do |v|
      v.name = "web2"
      v.memory = 512
      v.cpus = 1
    end

    web2.vm.box = "debian/jessie64"
    web2.vm.network "private_network", ip: "192.168.50.4"

  end
  
end
