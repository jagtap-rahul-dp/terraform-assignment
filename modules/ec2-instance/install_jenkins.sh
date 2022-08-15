#!/bin/bash

# installing jenkins
sudo yum update
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins

# installing ansible
sudo amazon-linux-extras install ansible2 -y

# installing chef
wget https://packages.chef.io/files/stable/chef-workstation/0.13.35/el/7/chef-workstation-0.13.35-1.el7.x86_64.rpm
sudo yum install chef-workstation-0.13.35-1.el7.x86_64.rpm -y
