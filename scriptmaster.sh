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