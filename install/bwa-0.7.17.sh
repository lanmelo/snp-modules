#!/bin/bash

cd /modules/src
wget https://sourceforge.net/projects/bio-bwa/files/bwa-0.7.17.tar.bz2
tar -xf bwa-0.7.17.tar.bz2
rm bwa-0.7.17.tar.bz2
cd bwa-0.7.17
make
