#!/bin/bash

#sudo apt-get install -y libcurl4-openssl-dev
cd /modules/src
wget https://cran.r-project.org/src/base/R-3/R-3.6.0.tar.gz
tar -xf R-3.6.0.tar.gz
rm R-3.6.0.tar.gz
cd R-3.6.0
./configure --prefix=/modules/bin/R-3.6.0
make
make install
