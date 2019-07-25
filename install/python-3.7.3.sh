#!/bin/bash

cd /modules/src
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
tar -xJf Python-3.7.3.tar.xz
rm Python-3.7.3.tar.xz
cd Python-3.7.3
./configure --prefix=/modules/bin/python-3.7.3
make
make install
module load python/3.7.3
pip3 install --upgrade pip
