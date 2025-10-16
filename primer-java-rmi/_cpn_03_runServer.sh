#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "classDir: `pwd`/bin"
cd bin

echo "Start HelloServer... (Keep Window open, do not close)"
java -classpath . -Djava.rmi.server.codebase=file://`pwd`/de.oth.java.rmi.HelloServer de.oth.java.rmi.HelloServer

