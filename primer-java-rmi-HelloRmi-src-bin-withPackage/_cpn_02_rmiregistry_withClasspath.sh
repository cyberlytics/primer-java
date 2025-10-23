#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "Current Directory: `pwd`"
echo "Starting rmiregistry -J-Djava.class.path=./bin  (Keep Window open, do not close)"
rmiregistry -J-Djava.class.path=./bin
