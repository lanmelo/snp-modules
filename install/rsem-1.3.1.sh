#!/bin/bash

#sudo apt-get install -y perl-doc
cd /modules/src
wget https://github.com/deweylab/RSEM/archive/v1.3.1.tar.gz
tar -xvzf v1.3.1.tar.gz
rm v1.3.1.tar.gz
cd RSEM-1.3.1/
make
make install DESTDIR=/modules/bin prefix=/RSEM-1.3.1
