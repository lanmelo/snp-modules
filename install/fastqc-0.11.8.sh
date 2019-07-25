#!/bin/bash

cd /modules/src
wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip
unzip fastqc_v0.11.8.zip
rm fastqc_v0.11.8.zip
mv FastQC FastQC-0.11.8
chmod +x FastQC-0.11.8/fastqc
