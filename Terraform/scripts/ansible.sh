#!/bin/bash

# Installing Ansible
sudo apt install python3-pip -y
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip3 install --user ansible 