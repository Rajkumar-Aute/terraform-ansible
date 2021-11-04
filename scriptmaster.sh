#!/bin/bash
echo "========== script to install Ansible Master =========="

echo "========== Ugprade =========="
sudo apt upgrade -y
echo "========== Ugdate =========="
sudo apt update

echo "========== Ansible Installation =========="

sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

echo "========== Ansible Installation =========="
ansible --version



#useradd devops # creating user devops and password is devops, can be updated in the script.
#echo $user:devops | chpasswd  # it will set password as "devops" for user, password can be updated in thee script.
#echo '$user ALL=(ALL:ALL) ALL' | sudo EDITOR='tee -a' visudo

