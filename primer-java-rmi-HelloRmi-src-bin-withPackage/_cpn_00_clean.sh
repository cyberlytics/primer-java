#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

rmdir /S /Q bin

