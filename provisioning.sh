#!/bin/bash

## UPDATE SYSTEM
apt-get -y update

## PACKAGES
apt-get -y install fontconfig openjdk-17-jre rsync net-tools gnupg vim

## JENKINS
cd ~
wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
apt-get -y update && apt-get -y install jenkins
systemctl enable jenkins --now
