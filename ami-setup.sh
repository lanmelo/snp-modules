#!/bin/bash

##### install required packages #####
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y \
	cmake 		libtbb-dev 	libhdf5-dev \
	default-jre 	pkg-config 	libcurl4-openssl-dev \
	perl-doc 	libssl-dev 	build-essential \
	uuid-dev 	libgpgme11-dev 	squashfs-tools

##### set MODULEPATH #####
unset MODULEPATH
cd /usr/share/modules/init/
sudo sed -i 's|`sed.*|/modules/modulefiles/|' sh bash
source /usr/share/modules/init/bash

##### install modules #####
sudo git clone --depth=1 https://github.com/lanmelo/snp-modules.git /modules
sudo chown -R ubuntu:ubuntu /modules
cd /modules
rm -rf .git*
mkdir src bin go Rlibs
for file in /modules/install/*; do $file; done

##### create /shared/singularity #####
echo 'sudo mkdir /shared/singularity' >> ~/.bashrc

##### cleanup #####
sudo shred -u /home/ubuntu/.ssh/* /root/.ssh/*
sudo shred -u /etc/ssh/*_key /etc/ssh/*_key.pub /etc/ssh/ssh_host_*
sudo /usr/local/sbin/ami_cleanup.sh
rm /home/ubuntu/ami-setup.sh
shred -u ~/.*history
history -cw

