#!/bin/bash
# Installs the miniconda3 and spack package managers to /shared/

##### install miniconda3 #####
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p /shared/miniconda3
rm Miniconda3-latest-Linux-x86_64.sh
echo 'export PATH="/shared/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
conda config --add channels conda-forge
conda config --add channels bioconda

##### install spack #####
git clone https://github.com/spack/spack.git /shared/spack
echo 'export PATH="/shared/spack/bin:$PATH"' >> ~/.bashrc
echo 'source /shared/spack/share/spack/setup-env.sh' >> ~/.bashrc
source ~/.bashrc

