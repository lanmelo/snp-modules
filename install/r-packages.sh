#!/bin/bash

module load r
R -e "install.packages('BiocManager', repos='http://cran.rstudio.com/', lib='/modules/Rlibs')"

install() {
        R -e "BiocManager::install('"$1"', lib='/modules/Rlibs')"
}

install DESeq2
install tximport

