#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "classDir: `pwd`/bin"
cd bin

echo "Start rmiregistry... (Keep Window open, do not close)"
rmiregistry

