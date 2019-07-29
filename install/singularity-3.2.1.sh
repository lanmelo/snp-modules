#!/bin/bash

# sudo apt-get install -y build-essential libssl-dev uuid-dev libgpgme11-dev squashfs-tools libseccomp-dev pkg-config

module load go
go get -u github.com/golang/dep/cmd/dep
sudo -E mkdir -p $GOPATH/src/github.com/sylabs
cd $GOPATH/src/github.com/sylabs
sudo wget https://github.com/sylabs/singularity/releases/download/v3.2.1/singularity-3.2.1.tar.gz
sudo tar -xzf singularity-3.2.1.tar.gz
rm singularity-3.2.1.tar.gz
cd singularity
sudo chown -R ubuntu:ubuntu .
./mconfig --prefix=/modules/bin/singularity-3.2.1 --localstatedir=/shared/singularity
cd builddir
make
sudo make install
echo '. /modules/bin/singularity-3.2.1/etc/bash_completion.d/singularity' >> ~/.bashrc
