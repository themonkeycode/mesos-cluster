#!/bin/bash

echo "Installing Ansible..."
#apt-get install -y software-properties-common
#apt-add-repository ppa:ansible/ansible
#apt-get update
#apt-get install -y ansible
sudo yum install -y epel-release
sudo yum install -y ansible mlocate nano
sudo cp /vagrant/config_files/hosts.j2 /etc/hosts
sudo cp /vagrant/ansible/hosts-node1 /etc/ansible/hosts