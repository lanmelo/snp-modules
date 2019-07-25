#!/bin/bash

cd /modules/src
wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2
tar -xf samtools-1.9.tar.bz2
rm samtools-1.9.tar.bz2
cd samtools-1.9/
./configure --prefix=/modules/bin/samtools-1.9
make
make install
