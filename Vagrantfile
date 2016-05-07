# -*- mode: ruby -*-
# vi: set ft=ruby :

    ANSIBLE_GROUPS = {
        "master" => ["node1"],
        "nodes" => ["node2", "node3", "node4"],
        "all_groups:children" => ["master", "nodes"]
    }


Vagrant.configure(2) do |config|
    # v2 configs
    config.vm.box = "bento/centos-7.1"
  

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
    end

    config.vm.define "node1" do |node1|
        node1.vm.network "private_network", ip: "192.168.33.10"
        node1.vm.hostname = "node1"
        node1.vm.provision "shell", path: "https://raw.githubusercontent.com/themonkeycode/mesos-cluster/master/bootstrap/bootstrap.sh", args: "[master] node1"
        
    end

    config.vm.define "node2" do |node2|
        node2.vm.network "private_network", ip: "192.168.33.11"
        node2.vm.hostname = "node2"
        node2.vm.provision "shell", path: "https://raw.githubusercontent.com/themonkeycode/mesos-cluster/master/bootstrap/bootstrap.sh", args: "[slave] node2"        
    end    
end