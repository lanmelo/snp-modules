#!/bin/bash

cd /modules/src
wget https://sourceforge.net/projects/samtools/files/tabix/tabix-0.2.6.tar.bz2
bzip2 -d tabix-0.2.6.tar.bz2
tar -xf tabix-0.2.6.tar
rm tabix-0.2.6.tar
sudo chmod -R 777 tabix-0.2.6
cd tabix-0.2.6
make
