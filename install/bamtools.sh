#!/bin/bash

#sudo apt install -y cmake
cd /modules/src
git clone git://github.com/pezmaster31/bamtools.git
cd bamtools
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/modules/bin/bamtools ..
make
make install
