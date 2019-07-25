#!/bin/bash

cd /modules/src
wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tar.xz
tar -xJf Python-2.7.16.tar.xz
rm Python-2.7.16.tar.xz
cd Python-2.7.16
./configure --prefix=/modules/bin/python-2.7.16 --with-ensurepip=install
make
make install
module load python/2.7.16
pip install --upgrade pip
