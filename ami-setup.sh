#!/bin/bash

##### install required packages #####
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y cmake
sudo apt-get install -y libtbb-dev
sudo apt-get install -y libhdf5-dev
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y default-jre
sudo apt-get install -y perl-doc

##### set MODULEPATH #####
unset MODULEPATH
cd /usr/share/modules/init/
sudo sed -i 's|`sed.*|/modules/modulefiles/|' sh bash
source /usr/share/modules/init/bash

##### install modules #####
sudo git clone https://github.com/lanmelo/snp-modules.git /modules
sudo chown -R ubuntu:ubuntu /modules
cd /modules
mkdir src bin Rlibs
for file in /modules/install/*; do $file; done

##### modify .bashrc #####
echo 'export PATH=/shared/packages/miniconda3/bin:$PATH' >> /home/ubuntu/.bashrc
echo 'export SPACK_ROOT=/shared/packages/spack' >> /home/ubuntu/.bashrc
echo '. /shared/packages/spack/share/spack/setup-env.sh' >> /home/ubuntu/.bashrc
echo 'git -C '/modules' pull && git -C '/shared' pull' >> /home/ubuntu/.bashrc

##### cleanup #####
sudo shred -u /home/ubuntu/.ssh/* /root/.ssh/*
sudo shred -u /etc/ssh/*_key /etc/ssh/*_key.pub /etc/ssh/ssh_host_*
sudo /usr/local/sbin/ami_cleanup.sh
rm /home/ubuntu/ami-setup.sh
shred -u ~/.*history && history -cw
