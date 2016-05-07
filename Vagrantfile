# -*- mode: ruby -*-
# vi: set ft=ruby :

    ANSIBLE_GROUPS = {
        "master" => ["node1"],
        "nodes" => ["node2", "node3", "node4"],
        "all_groups:children" => ["master", "nodes"]
    }


Vagrant.configure(2) do |config|
    # v2 configs
    config.vm.box = "centos/7"

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
    end

    config.vm.define "node1" do |node1|
        node1.vm.network "private_network", ip: "192.168.33.10"
        node1.vm.hostname = "node1"
        #node1.vm.provision "shell", path: "boostrap/bootstrap.sh", args: "[master] node1"
        #node1.vm.provision "ansible_local" do |ansible|
        #    ansible.playbook = "playbook.yml"
        #    ansible.groups = ANSIBLE_GROUPS
        #end
    end

    config.vm.define "node2" do |node2|
        node2.vm.network "private_network", ip: "192.168.33.11"
        node2.vm.hostname = "node2"
        node2.vm.provision "shell", path: "boostrap/bootstrap.sh", args: "[slave] node2"
        #node2.vm.provision "ansible_local" do |ansible|
        #    ansible.provisioning_path = "/vagrant"
        #    ansible.playbook = "playbook.yml"
        #    ansible.groups = ANSIBLE_GROUPS
        #end
    end


    config.vm.define "node3" do |node3|
        node3.vm.network "private_network", ip: "192.168.33.12"
        node3.vm.hostname = "node3"
        #node3.vm.provision "ansible_local" do |ansible|
        #    ansible.provisioning_path = "/vagrant"
        #    ansible.playbook = "playbook.yml"
        #    ansible.groups = ANSIBLE_GROUPS
        #end
    end

    config.vm.define "node4" do |node4|
        node4.vm.network "private_network", ip: "192.168.33.13"
        node4.vm.hostname = "node4"
        #node4.vm.provision "ansible_local" do |ansible|
        #    ansible.provisioning_path = "/vagrant"
        #    ansible.playbook = "playbook.yml"
        #    ansible.groups = ANSIBLE_GROUPS
        #end
    end
end