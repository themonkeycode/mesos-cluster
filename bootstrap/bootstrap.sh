#!/bin/bash

echo "Installing Ansible..."
sudo yum install -y epel-release
sudo yum install -y ansible mlocate nano
echo "Configure Ansible..."
sudo cp /vagrant/config/hosts.j2 /etc/hosts
sudo cp /vagrant/ansible/hosts-$2 /etc/ansible/hosts
sudo echo "$1" >> /etc/ansible/hosts
sudo echo "$2" >> /etc/ansible/hosts
echo "Running Ansible playbook..."
ansible-playbook -c local /vagrant/ansible/playbook.yml &> /vagrant/ansible/logs/playbook-$2.log
