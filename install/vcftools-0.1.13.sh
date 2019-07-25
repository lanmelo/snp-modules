#!/bin/bash

cd /modules/src
wget https://sourceforge.net/projects/vcftools/files/vcftools_0.1.13.tar.gz
tar -xzf vcftools_0.1.13.tar.gz
rm vcftools_0.1.13.tar.gz
cd vcftools_0.1.13
make
