#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "classDir: `pwd`\bin"
cd bin

echo "Start HelloClient..."
java de.oth.java.rmi.HelloClient

