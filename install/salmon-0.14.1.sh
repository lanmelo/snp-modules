#!/bin/bash

cd /modules/src
wget https://github.com/COMBINE-lab/salmon/releases/download/v0.14.1/salmon-0.14.1_linux_x86_64.tar.gz
tar -xvzf salmon-0.14.1_linux_x86_64.tar.gz
rm salmon-0.14.1_linux_x86_64.tar.gz
mv salmon-latest_linux_x86_64 salmon-0.14.1
