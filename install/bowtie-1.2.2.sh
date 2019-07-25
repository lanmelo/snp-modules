#!/bin/bash

#sudo apt-get install -y libtbb-dev
cd /modules/src
wget https://sourceforge.net/projects/bowtie-bio/files/bowtie/1.2.2/bowtie-1.2.2-src.zip
unzip bowtie-1.2.2-src.zip
rm bowtie-1.2.2-src.zip
cd bowtie-1.2.2
make
