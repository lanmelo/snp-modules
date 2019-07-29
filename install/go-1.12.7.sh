#!/bin/bash

cd /modules/src
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -xvzf go1.12.7.linux-amd64.tar.gz
mv go go-1.12.7
rm go1.12.7.linux-amd64.tar.gz

