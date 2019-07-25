#!/bin/bash

#sudo apt-get install -y libhdf5-dev
cd /modules/src
wget https://github.com/pachterlab/kallisto/archive/v0.46.0.tar.gz
tar -xvzf v0.46.0.tar.gz
rm v0.46.0.tar.gz*
cd kallisto-0.46.0/
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/modules/bin/kallisto-0.46.0 ..
make
make install
