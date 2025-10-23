#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "Current Directory: `pwd`"
echo "Starting rmiregistry... (Keep Window open, do not close)"
rmiregistry

