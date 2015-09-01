#!/bin/sh
URL="https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz"
wget $URL
PWD=`pwd`
docker build -t ${PWD#*-} .
