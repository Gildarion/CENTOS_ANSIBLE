#!/bin/bash
#Install virtualbox guest additions

#Exit immediately if a command exits with a non-zero status
set -e
#Print commands and their arguments as they are executed
set -x

sudo yum -y install bzip2
sudo yum -y --enablerepo=epel install dkms
sudo yum -y install kernel-devel
sudo yum -y install make
sudo yum -y install perl

#Activate dkms service
sudo systemctl start dkms
sudo systemctl enable dkms

#Install guest additions
sudo mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
sudo /mnt/VBoxLinuxAdditions.run || :
sudo umount /mnt/
rm -f ~/VBoxGuestAdditions.iso