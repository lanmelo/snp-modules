#!/bin/bash

##### install miniconda3 #####
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p /shared/miniconda3
rm Miniconda3-latest-Linux-x86_64.sh
conda config --add channels conda-forge
conda config --add channels bioconda

##### install spack #####
git clone https://github.com/spack/spack.git /shared/spack

