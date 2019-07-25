#!/bin/bash

install() {

        pip install $1==$2 -t /modules/bin/$1-$2

}

module load python/3.7.3

install numpy 1.16.1
install scipy 1.3.0
install biopython 1.73
install matplotlib 3.1.0
install pysam 0.15.2

module load numpy
install HTSeq 0.11.2

module purge

# install cutadapt
BASE=/modules/bin/cutadapt-2.3
mkdir $BASE
virtualenv -p /modules/bin/python-3.7.3/bin/python3.7 $BASE/venv
$BASE/venv/bin/pip3 install --install-option="--install-scripts=$BASE/bin" cutadapt==2.3

# install MACS2
BASE=/modules/bin/MACS2-2.1.2.1
mkdir $BASE
virtualenv -p /modules/bin/python-2.7.16/bin/python $BASE/venv
$BASE/venv/bin/pip install --install-option="--install-scripts=$BASE/bin" numpy==1.16.1
$BASE/venv/bin/pip install --install-option="--install-scripts=$BASE/bin" MACS2==2.1.2.1
