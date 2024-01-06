# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  ######### VM 2 ##########
  config.vm.define "vm2" do |vm2|

    ## BASE
    vm2.vm.box = "jhoncytech/jenkins-suite"
    vm2.vm.box_check_update = false
    vm2.vm.hostname = "pre-01"

    ## PORTS
    vm2.vm.network "forwarded_port", guest: 80, host: 8081
    vm2.vm.network "forwarded_port", guest: 22, host: 2244, id: "ssh"

    ## NETWORK
    vm2.vm.network "private_network", ip: "192.168.10.3", nic_type: "virtio", virtualbox__intnet: "development"

    ## VB
    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "jt-pre-01"
      vb.memory = "2048"
      vb.cpus = "1"
      vb.default_nic_type = "virtio"
    end

  end 

  ######### VM 3 ##########
  config.vm.define "vm3" do |vm3|

    ## BASE
    # vm3.vm.box = "ubuntu/jammy64"
    # vm3.vm.box = "vagrant-jenkins-suite"
    vm3.vm.box = "jhoncytech/jenkins-suite"
    vm3.vm.box_check_update = false
    vm3.vm.hostname = "pro-01"

    ## PORTS
    vm3.vm.network "forwarded_port", guest: 80, host: 8082
    vm3.vm.network "forwarded_port", guest: 22, host: 2255, id: "ssh"

    ## NETWORK
    vm3.vm.network "private_network", ip: "192.168.10.4", nic_type: "virtio", virtualbox__intnet: "development"

    ## VB
    vm3.vm.provider "virtualbox" do |vb|
      vb.name = "jt-pro-01"
      vb.memory = "2048"
      vb.cpus = "1"
      vb.default_nic_type = "virtio"
    end

  end

  ######### VM1 ##########
  config.vm.define "vm1" do |vm1|

    ## BASE
    # vm1.vm.box = "ubuntu/jammy64"
    # vm1.vm.box = "vagrant-jenkins-suite"
    vm1.vm.box = "jhoncytech/jenkins-suite"
    vm1.vm.box_check_update = false
    vm1.vm.hostname = "jenkins"

    ## PORTS
    vm1.vm.network "forwarded_port", guest: 8080, host: 8080
    vm1.vm.network "forwarded_port", guest: 22, host: 2233, id: "ssh"

    ## NETWORK
    vm1.vm.network "private_network", ip: "192.168.10.2", nic_type: "virtio", virtualbox__intnet: "development"

    ## VB
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "jt-jenkins"
      vb.memory = "4096"
      vb.cpus = "2"
      vb.default_nic_type = "virtio"
    end

    ## PROVISIONING SCRIPT
    vm1.vm.provision "shell", path: "provisioning.sh"

  end

end
