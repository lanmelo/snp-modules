#!/bin/bash

#sudo apt-get install libtbb-dev
cd /modules/src
wget https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.5.1/bowtie2-2.3.5.1-source.zip
unzip bowtie2-2.3.5.1-source.zip
rm bowtie2-2.3.5.1-source.zip
cd bowtie2-2.3.5.1
make
